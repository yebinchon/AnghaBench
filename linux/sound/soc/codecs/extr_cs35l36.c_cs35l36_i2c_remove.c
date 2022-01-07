
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct cs35l36_private {int supplies; int num_supplies; scalar_t__ reset_gpio; int regmap; } ;


 int CS35L36_INT1_MASK ;
 int CS35L36_INT1_MASK_RESET ;
 int CS35L36_INT3_MASK ;
 int CS35L36_INT3_MASK_RESET ;
 int gpiod_set_value_cansleep (scalar_t__,int ) ;
 struct cs35l36_private* i2c_get_clientdata (struct i2c_client*) ;
 int regmap_write (int ,int ,int ) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static int cs35l36_i2c_remove(struct i2c_client *client)
{
 struct cs35l36_private *cs35l36 = i2c_get_clientdata(client);


 regmap_write(cs35l36->regmap, CS35L36_INT1_MASK,
       CS35L36_INT1_MASK_RESET);
 regmap_write(cs35l36->regmap, CS35L36_INT3_MASK,
       CS35L36_INT3_MASK_RESET);

 if (cs35l36->reset_gpio)
  gpiod_set_value_cansleep(cs35l36->reset_gpio, 0);

 regulator_bulk_disable(cs35l36->num_supplies, cs35l36->supplies);

 return 0;
}
