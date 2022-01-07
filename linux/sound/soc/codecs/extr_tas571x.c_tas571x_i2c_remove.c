
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tas571x_private {int supplies; TYPE_1__* chip; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int num_supply_names; } ;


 struct tas571x_private* i2c_get_clientdata (struct i2c_client*) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static int tas571x_i2c_remove(struct i2c_client *client)
{
 struct tas571x_private *priv = i2c_get_clientdata(client);

 regulator_bulk_disable(priv->chip->num_supply_names, priv->supplies);

 return 0;
}
