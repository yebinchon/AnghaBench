
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int NAU8825_JACK_DET_RESTART ;
 int NAU8825_REG_JACK_DET_CTRL ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static void nau8825_restart_jack_detection(struct regmap *regmap)
{




 regmap_update_bits(regmap, NAU8825_REG_JACK_DET_CTRL,
  NAU8825_JACK_DET_RESTART, NAU8825_JACK_DET_RESTART);
 regmap_update_bits(regmap, NAU8825_REG_JACK_DET_CTRL,
  NAU8825_JACK_DET_RESTART, 0);
}
