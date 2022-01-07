
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct cs53l30_private {int supplies; int reset_gpio; } ;


 int ARRAY_SIZE (int ) ;
 int gpiod_set_value_cansleep (int ,int ) ;
 struct cs53l30_private* i2c_get_clientdata (struct i2c_client*) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static int cs53l30_i2c_remove(struct i2c_client *client)
{
 struct cs53l30_private *cs53l30 = i2c_get_clientdata(client);


 gpiod_set_value_cansleep(cs53l30->reset_gpio, 0);

 regulator_bulk_disable(ARRAY_SIZE(cs53l30->supplies),
          cs53l30->supplies);

 return 0;
}
