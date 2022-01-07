
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int NAU8825_GPIO2JD1 ;
 int NAU8825_JACK_POLARITY ;
 int NAU8825_REG_I2C_DEVICE_ID ;
 int NAU8825_REG_JACK_DET_CTRL ;
 int regmap_read (struct regmap*,int ,int*) ;

__attribute__((used)) static bool nau8825_is_jack_inserted(struct regmap *regmap)
{
 bool active_high, is_high;
 int status, jkdet;

 regmap_read(regmap, NAU8825_REG_JACK_DET_CTRL, &jkdet);
 active_high = jkdet & NAU8825_JACK_POLARITY;
 regmap_read(regmap, NAU8825_REG_I2C_DEVICE_ID, &status);
 is_high = status & NAU8825_GPIO2JD1;



 return active_high == is_high;
}
