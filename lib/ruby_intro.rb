# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  total = 0
  arr.each do |plus|
    total = total + plus
  end
  return total
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 1
    return arr.at(0)
  end
  if arr.length == 0
    return 0
  end
  var1 = arr.at(0)
  arr.each do |largest|
    if largest >= var1
      var1 = largest
    end
  end
  arr -= [var1]
  var2 = arr.at(0)
  arr.each do |el|
    if el > var2
      var2 = el
    end
  end
  # save to a new variable and repeat
  return var1 + var2
end

def sum_to_n? arr, n
  # YOUR CODE HERE
    arr.each do |item|
    var1 = n - item
    var2 = arr - [item]
    if var2.include? var1
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  var1 = "Hello, " + name
  return var1
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if/(\A[aeiou])|(\A\d)|(\A\W)|(^$)/i.match(s)
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if /[a-z]/.match(s)
    return false
  end
  if /(00)\Z/.match(s)
    return true
  end
  if /0\Z/.match(s)
    return true
  end
end

# Part 3

class BookInStock
  def initialize(isbn,price)
    if isbn.empty?
      raise ArgumentError, 'ISBN is empty'
    elsif price <= 0
      raise ArgumentError, 'Price less than zero'
    elsif
      @book_isbn = isbn
      @book_price = price
    end
  end
  def price_as_string
    return '$%0.2f'%[@book_price]
  end
  # Setters
  def price= (value)
    @book_price = value
  end
  def isbn= (value)
    @book_isbn = value
  end
  # Getters
  def price
    @book_price
  end
  def isbn
    @book_isbn
  end
end