module MyEnumerable
  def all?
    boolean = true
    each do |n|
      boolean = false unless yield n
    end
    boolean
  end

  def any?
    boolean = false
    each do |n|
      boolean = true if yield n
    end
    boolean
  end

  def filter
    filtered_array = []
    each do |n|
      filtered_array.push(n) if yield n
    end
    filtered_array
  end
end
