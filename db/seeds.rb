# Initialize Admin User
if User.find_by(email: "tanyumr@gmail.com").nil?
  u = User.new
  u.email = "tanyumr@gmail.com"           # 可以改成自己的 email
  u.password = "qweqwe"                   # 最少要六码
  u.password_confirmation = "qweqwe"      # 最少要六码
  u.is_admin = true
  u.save
  puts "Admin 已经建立好了，帐号为#{u.email}, 密码为#{u.password}"
else
  puts "Admin 已经建立过了，脚本跳过该步骤。"
end




 # Initialize Product

 Product.create!(title: "MacBook Air",
   description: "Mac Air",
   price: 8000,
   quantity: 15,
   image: open("https://ws4.sinaimg.cn/large/006tNc79gy1fi6n7vsuw6j31hc0zkdia.jpg")
   )

 Product.create!(title: "MacBook Pro",
   description: "Mac Pro",
   price: 12000,
   quantity: 25,
   image: open("https://img.alicdn.com/imgextra/i2/197232874/TB2Y8sjxJBopuFjSZPcXXc9EpXa_!!197232874.jpg")
   )


 Product.create!(title: "MacBook Pro+",
   description: "Mac Pro",
   price: 15000,
   quantity: 5,
   image: open("https://img.alicdn.com/imgextra/i2/1917047079/TB27bfoubplpuFjSspiXXcdfFXa_!!1917047079.jpg")
   )



 Product.create!(title: "book",
   description: "book&coffee",
   price: 200,
   quantity: 250,
   image: open(File.join(Rails.root, "/app/assets/images/products/book.jpg"))
   )
