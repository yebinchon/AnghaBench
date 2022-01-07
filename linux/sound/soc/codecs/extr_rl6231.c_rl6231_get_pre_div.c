
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int EINVAL ;
 int regmap_read (struct regmap*,unsigned int,int*) ;

int rl6231_get_pre_div(struct regmap *map, unsigned int reg, int sft)
{
 int pd, val;

 regmap_read(map, reg, &val);

 val = (val >> sft) & 0x7;

 switch (val) {
 case 0:
 case 1:
 case 2:
 case 3:
  pd = val + 1;
  break;
 case 4:
  pd = 6;
  break;
 case 5:
  pd = 8;
  break;
 case 6:
  pd = 12;
  break;
 case 7:
  pd = 16;
  break;
 default:
  pd = -EINVAL;
  break;
 }

 return pd;
}
