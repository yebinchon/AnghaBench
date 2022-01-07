
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm1250_priv {int gpios; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 struct wm1250_priv* dev_get_drvdata (int *) ;
 int gpio_free_array (int ,int ) ;

__attribute__((used)) static void wm1250_ev1_free(struct i2c_client *i2c)
{
 struct wm1250_priv *wm1250 = dev_get_drvdata(&i2c->dev);

 if (wm1250)
  gpio_free_array(wm1250->gpios, ARRAY_SIZE(wm1250->gpios));
}
