
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8993_priv {int supplies; } ;
struct i2c_client {scalar_t__ irq; } ;


 int ARRAY_SIZE (int ) ;
 int free_irq (scalar_t__,struct wm8993_priv*) ;
 struct wm8993_priv* i2c_get_clientdata (struct i2c_client*) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static int wm8993_i2c_remove(struct i2c_client *i2c)
{
 struct wm8993_priv *wm8993 = i2c_get_clientdata(i2c);

 if (i2c->irq)
  free_irq(i2c->irq, wm8993);
 regulator_bulk_disable(ARRAY_SIZE(wm8993->supplies), wm8993->supplies);

 return 0;
}
