require "pry"

class Currency

  def initialize amount, denomination = :usd
    @amount = amount
    @denomination = denomination
  end

  def amount
    @amount
  end

  def denomination
    @denomination
  end

  def times number
    Currency.new(@amount*number, @denomination)
  end

  def plus currency
    Currency.new(@amount + currency.amount, @denomination)
  end

  def minus currency
    Currency.new(@amount - currency.amount, @denomination)
  end

end


a = Currency.new(5, :usd)
b = Currency.new(10, :usd)
c = Currency.new(5, :gbp)

binding.pry
