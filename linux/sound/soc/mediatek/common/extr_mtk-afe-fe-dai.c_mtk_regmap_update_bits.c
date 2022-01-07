
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int regmap_update_bits (struct regmap*,int,unsigned int,unsigned int) ;

__attribute__((used)) static int mtk_regmap_update_bits(struct regmap *map, int reg,
      unsigned int mask,
      unsigned int val, int shift)
{
 if (reg < 0 || WARN_ON_ONCE(shift < 0))
  return 0;
 return regmap_update_bits(map, reg, mask << shift, val << shift);
}
