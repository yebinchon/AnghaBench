
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nau8825 {int regmap; } ;


 int NAU8825_CLK_MCLK_SRC_MASK ;
 int NAU8825_CLK_SRC_MASK ;
 int NAU8825_CLK_SRC_VCO ;
 int NAU8825_DCO_EN ;
 int NAU8825_FLL_RATIO_MASK ;
 int NAU8825_REG_CLK_DIVIDER ;
 int NAU8825_REG_FLL1 ;
 int NAU8825_REG_FLL2 ;
 int NAU8825_REG_FLL3 ;
 int NAU8825_REG_FLL4 ;
 int NAU8825_REG_FLL5 ;
 int NAU8825_REG_FLL6 ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void nau8825_xtalk_clock(struct nau8825 *nau8825)
{

 regmap_write(nau8825->regmap, NAU8825_REG_FLL1, 0x0);
 regmap_write(nau8825->regmap, NAU8825_REG_FLL2, 0x3126);
 regmap_write(nau8825->regmap, NAU8825_REG_FLL3, 0x0008);
 regmap_write(nau8825->regmap, NAU8825_REG_FLL4, 0x0010);
 regmap_write(nau8825->regmap, NAU8825_REG_FLL5, 0x0);
 regmap_write(nau8825->regmap, NAU8825_REG_FLL6, 0x6000);

 regmap_update_bits(nau8825->regmap, NAU8825_REG_CLK_DIVIDER,
  NAU8825_CLK_SRC_MASK, NAU8825_CLK_SRC_VCO);
 regmap_update_bits(nau8825->regmap, NAU8825_REG_FLL6, NAU8825_DCO_EN,
  NAU8825_DCO_EN);



 regmap_update_bits(nau8825->regmap, NAU8825_REG_CLK_DIVIDER,
  NAU8825_CLK_MCLK_SRC_MASK, 0xf);
 regmap_update_bits(nau8825->regmap, NAU8825_REG_FLL1,
  NAU8825_FLL_RATIO_MASK, 0x10);
}
