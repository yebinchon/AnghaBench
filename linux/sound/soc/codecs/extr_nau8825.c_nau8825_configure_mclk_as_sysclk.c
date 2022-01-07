
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int NAU8825_CLK_SRC_MASK ;
 int NAU8825_CLK_SRC_MCLK ;
 int NAU8825_DCO_EN ;
 int NAU8825_ICTRL_LATCH_MASK ;
 int NAU8825_REG_CLK_DIVIDER ;
 int NAU8825_REG_FLL1 ;
 int NAU8825_REG_FLL6 ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static void nau8825_configure_mclk_as_sysclk(struct regmap *regmap)
{
 regmap_update_bits(regmap, NAU8825_REG_CLK_DIVIDER,
  NAU8825_CLK_SRC_MASK, NAU8825_CLK_SRC_MCLK);
 regmap_update_bits(regmap, NAU8825_REG_FLL6,
  NAU8825_DCO_EN, 0);

 regmap_update_bits(regmap, NAU8825_REG_FLL1,
  NAU8825_ICTRL_LATCH_MASK, 0);
}
