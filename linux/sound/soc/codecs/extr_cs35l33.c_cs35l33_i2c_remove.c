
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct cs35l33_private {int core_supplies; int num_core_supplies; int reset_gpio; } ;


 int gpiod_set_value_cansleep (int ,int ) ;
 struct cs35l33_private* i2c_get_clientdata (struct i2c_client*) ;
 int pm_runtime_disable (int *) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static int cs35l33_i2c_remove(struct i2c_client *client)
{
 struct cs35l33_private *cs35l33 = i2c_get_clientdata(client);

 gpiod_set_value_cansleep(cs35l33->reset_gpio, 0);

 pm_runtime_disable(&client->dev);
 regulator_bulk_disable(cs35l33->num_core_supplies,
  cs35l33->core_supplies);

 return 0;
}
