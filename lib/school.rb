class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = Hash.new {|a,b| a[b] = []}
  end
  
  def add_student(name,grade)
        @roster[grade] = []
        @roster.each do |g, hash|
        hash << name
        hash.sort
        end
  end

  def grade(grade)
    @roster[grade]
  end

end