
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct aic3x_priv {int gpio_reset; int list; } ;


 int aic3x_is_shared_reset (struct aic3x_priv*) ;
 int gpio_free (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int ) ;
 struct aic3x_priv* i2c_get_clientdata (struct i2c_client*) ;
 int list_del (int *) ;

__attribute__((used)) static int aic3x_i2c_remove(struct i2c_client *client)
{
 struct aic3x_priv *aic3x = i2c_get_clientdata(client);

 list_del(&aic3x->list);

 if (gpio_is_valid(aic3x->gpio_reset) &&
     !aic3x_is_shared_reset(aic3x)) {
  gpio_set_value(aic3x->gpio_reset, 0);
  gpio_free(aic3x->gpio_reset);
 }
 return 0;
}
