# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  if arr.length <= 1
    return arr.sum
  end

  m1 = arr.max
  arr.delete_at(arr.index(m1))
  m1 + arr.max
end

def sum_to_n? arr, n
  if arr.length <= 1
    return false
  end
  for i in 0..arr.length - 1
    for j in 0..arr.length - 1
      if i != j and arr[i] + arr[j] == n
        return true
      end
    end
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  if s.length == 0
    return false
  end
  "bcdfghjklmnpqrstvwxyz".split(//).include? s.downcase[0]
end

def binary_multiple_of_4? s
  if s.length == 0
    return false
  end

  as_array = s.split(//)
  total = 0
  for i in 0..as_array.length - 1
    if !['0', '1'].include? as_array[i]
      return false
    end

    if as_array[i] == '0'
      total *= 2
    elsif as_array[i] == '1'
      total = total * 2 + 1
    end
  end
  total % 4 == 0
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn == "" or price <= 0
      raise ArgumentError, "invalid"
    end
    @isbn = isbn
    @price = price
  end

  def isbn
    @isbn
  end

  def price
    @price
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def price=(price)
    @price = price
  end

  def price_as_string
    res = @price.to_s.split(/\./)

    if res[1] == nil
      cents = "00"
    else
      cents = res[1].ljust(2, '0')
    end

    res = res[0] + "." + cents
    "$#{res}"
  end
end
