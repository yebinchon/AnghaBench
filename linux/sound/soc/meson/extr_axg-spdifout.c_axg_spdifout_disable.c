
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int SPDIFOUT_CTRL0 ;
 int SPDIFOUT_CTRL0_EN ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static void axg_spdifout_disable(struct regmap *map)
{
 regmap_update_bits(map, SPDIFOUT_CTRL0, SPDIFOUT_CTRL0_EN, 0);
}
