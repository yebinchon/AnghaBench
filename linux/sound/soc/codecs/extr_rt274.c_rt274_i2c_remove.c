
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt274_priv {int dummy; } ;
struct i2c_client {scalar_t__ irq; } ;


 int free_irq (scalar_t__,struct rt274_priv*) ;
 struct rt274_priv* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int rt274_i2c_remove(struct i2c_client *i2c)
{
 struct rt274_priv *rt274 = i2c_get_clientdata(i2c);

 if (i2c->irq)
  free_irq(i2c->irq, rt274);

 return 0;
}
