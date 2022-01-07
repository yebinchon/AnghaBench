
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct cs35l35_private {int reset_gpio; int supplies; int num_supplies; } ;


 int gpiod_set_value_cansleep (int ,int ) ;
 struct cs35l35_private* i2c_get_clientdata (struct i2c_client*) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static int cs35l35_i2c_remove(struct i2c_client *i2c_client)
{
 struct cs35l35_private *cs35l35 = i2c_get_clientdata(i2c_client);

 regulator_bulk_disable(cs35l35->num_supplies, cs35l35->supplies);
 gpiod_set_value_cansleep(cs35l35->reset_gpio, 0);

 return 0;
}
