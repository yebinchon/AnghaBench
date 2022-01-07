
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int regmap_write (struct regmap*,int,unsigned int) ;

__attribute__((used)) static int mtk_regmap_write(struct regmap *map, int reg, unsigned int val)
{
 if (reg < 0)
  return 0;
 return regmap_write(map, reg, val);
}
