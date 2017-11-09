def index
end
def add
   @product = Product.find(params[:id])

   cart = session[:cart] || []
   cart << @product.id
 
  # Save the cart in the session.
    session[:cart] = cart
end
