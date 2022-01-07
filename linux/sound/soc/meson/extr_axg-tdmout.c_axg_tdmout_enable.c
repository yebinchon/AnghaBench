
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int TDMOUT_CTRL0 ;
 int TDMOUT_CTRL0_ENABLE ;
 int TDMOUT_CTRL0_RST_IN ;
 int TDMOUT_CTRL0_RST_OUT ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;

__attribute__((used)) static void axg_tdmout_enable(struct regmap *map)
{

 regmap_update_bits(map, TDMOUT_CTRL0,
      TDMOUT_CTRL0_RST_OUT | TDMOUT_CTRL0_RST_IN, 0);


 regmap_update_bits(map, TDMOUT_CTRL0,
      TDMOUT_CTRL0_RST_OUT, TDMOUT_CTRL0_RST_OUT);
 regmap_update_bits(map, TDMOUT_CTRL0,
      TDMOUT_CTRL0_RST_IN, TDMOUT_CTRL0_RST_IN);


 regmap_update_bits(map, TDMOUT_CTRL0,
      TDMOUT_CTRL0_ENABLE, TDMOUT_CTRL0_ENABLE);
}
