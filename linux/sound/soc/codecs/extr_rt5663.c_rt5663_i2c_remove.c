
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt5663_priv {int supplies; } ;
struct i2c_client {scalar_t__ irq; } ;


 int ARRAY_SIZE (int ) ;
 int free_irq (scalar_t__,struct rt5663_priv*) ;
 struct rt5663_priv* i2c_get_clientdata (struct i2c_client*) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static int rt5663_i2c_remove(struct i2c_client *i2c)
{
 struct rt5663_priv *rt5663 = i2c_get_clientdata(i2c);

 if (i2c->irq)
  free_irq(i2c->irq, rt5663);

 regulator_bulk_disable(ARRAY_SIZE(rt5663->supplies), rt5663->supplies);

 return 0;
}
