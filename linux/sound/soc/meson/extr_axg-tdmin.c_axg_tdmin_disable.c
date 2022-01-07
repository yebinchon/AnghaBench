
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int TDMIN_CTRL ;
 int TDMIN_CTRL_ENABLE ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static void axg_tdmin_disable(struct regmap *map)
{
 regmap_update_bits(map, TDMIN_CTRL, TDMIN_CTRL_ENABLE, 0);
}
