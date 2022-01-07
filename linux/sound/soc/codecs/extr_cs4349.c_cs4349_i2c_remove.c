
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct cs4349_private {int reset_gpio; } ;


 int gpiod_set_value_cansleep (int ,int ) ;
 struct cs4349_private* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int cs4349_i2c_remove(struct i2c_client *client)
{
 struct cs4349_private *cs4349 = i2c_get_clientdata(client);


 gpiod_set_value_cansleep(cs4349->reset_gpio, 0);

 return 0;
}
