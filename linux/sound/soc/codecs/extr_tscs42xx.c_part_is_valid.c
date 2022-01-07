
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tscs42xx {int regmap; } ;


 int R_DEVIDH ;
 int R_DEVIDL ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int part_is_valid(struct tscs42xx *tscs42xx)
{
 int val;
 int ret;
 unsigned int reg;

 ret = regmap_read(tscs42xx->regmap, R_DEVIDH, &reg);
 if (ret < 0)
  return ret;

 val = reg << 8;
 ret = regmap_read(tscs42xx->regmap, R_DEVIDL, &reg);
 if (ret < 0)
  return ret;

 val |= reg;

 switch (val) {
 case 0x4A74:
 case 0x4A73:
  return 1;
 default:
  return 0;
 };
}
