
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8903_priv {int supplies; } ;
struct i2c_client {scalar_t__ irq; } ;


 int ARRAY_SIZE (int ) ;
 int free_irq (scalar_t__,struct wm8903_priv*) ;
 struct wm8903_priv* i2c_get_clientdata (struct i2c_client*) ;
 int regulator_bulk_disable (int ,int ) ;
 int wm8903_free_gpio (struct wm8903_priv*) ;

__attribute__((used)) static int wm8903_i2c_remove(struct i2c_client *client)
{
 struct wm8903_priv *wm8903 = i2c_get_clientdata(client);

 regulator_bulk_disable(ARRAY_SIZE(wm8903->supplies),
          wm8903->supplies);
 if (client->irq)
  free_irq(client->irq, wm8903);
 wm8903_free_gpio(wm8903);

 return 0;
}
