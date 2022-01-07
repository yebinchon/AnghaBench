
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int TDMOUT_CTRL0 ;
 int TDMOUT_CTRL0_ENABLE ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static void axg_tdmout_disable(struct regmap *map)
{
 regmap_update_bits(map, TDMOUT_CTRL0, TDMOUT_CTRL0_ENABLE, 0);
}
