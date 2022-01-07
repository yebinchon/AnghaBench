
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct cs35l32_private {int reset_gpio; } ;


 int gpiod_set_value_cansleep (int ,int ) ;
 struct cs35l32_private* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int cs35l32_i2c_remove(struct i2c_client *i2c_client)
{
 struct cs35l32_private *cs35l32 = i2c_get_clientdata(i2c_client);


 gpiod_set_value_cansleep(cs35l32->reset_gpio, 0);

 return 0;
}
