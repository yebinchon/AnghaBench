
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int SPDIFOUT_CTRL0 ;
 int SPDIFOUT_CTRL0_EN ;
 int SPDIFOUT_CTRL0_RST_IN ;
 int SPDIFOUT_CTRL0_RST_OUT ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;

__attribute__((used)) static void axg_spdifout_enable(struct regmap *map)
{

 regmap_update_bits(map, SPDIFOUT_CTRL0,
      SPDIFOUT_CTRL0_RST_OUT | SPDIFOUT_CTRL0_RST_IN,
      0);


 regmap_update_bits(map, SPDIFOUT_CTRL0,
      SPDIFOUT_CTRL0_RST_OUT, SPDIFOUT_CTRL0_RST_OUT);
 regmap_update_bits(map, SPDIFOUT_CTRL0,
      SPDIFOUT_CTRL0_RST_IN, SPDIFOUT_CTRL0_RST_IN);


 regmap_update_bits(map, SPDIFOUT_CTRL0, SPDIFOUT_CTRL0_EN,
      SPDIFOUT_CTRL0_EN);
}
