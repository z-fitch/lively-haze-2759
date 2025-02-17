# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
    @chef_1 = Chef.create!(name: "That One Guy")
      
    @spaget = @chef_1.dishes.create!(name: "Noodles", description: "very good much wow")
    @steak = @chef_1.dishes.create!(name: "Noodles", description: "very good much wow")
    
    @sauce = Ingredient.create!(name: "Tomato Sauce", calories: 1234)
    @carrot = Ingredient.create!(name: "Carrots", calories: 12)
    @beef = Ingredient.create!(name: "Beef", calories: 321)
    @zuc = Ingredient.create!(name: "Zucchini", calories: 342)
    @squash = Ingredient.create!(name: "Squash", calories: 400)
    
    @meat = Ingredient.create!(name: "Ribeye", calories: 1400)
    @butter = Ingredient.create!(name: "Butter", calories: 1400)
    @mash = Ingredient.create!(name: "Mashed Potatos", calories: 400)
    
    @spaget.ingredients << @sauce
    @spaget.ingredients << @carrot
    @spaget.ingredients << @beef
    @spaget.ingredients << @zuc
    @spaget.ingredients << @mash

    @steak.ingredients << @meat
    @steak.ingredients << @mash
    @steak.ingredients << @butter