
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct cs42l42_private {int reset_gpio; } ;


 int gpiod_set_value_cansleep (int ,int ) ;
 struct cs42l42_private* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int cs42l42_i2c_remove(struct i2c_client *i2c_client)
{
 struct cs42l42_private *cs42l42 = i2c_get_clientdata(i2c_client);


 gpiod_set_value_cansleep(cs42l42->reset_gpio, 0);

 return 0;
}
