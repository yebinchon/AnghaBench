
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int RT5682_I2C_MODE ;
 int RT5682_RESET ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static void rt5682_reset(struct regmap *regmap)
{
 regmap_write(regmap, RT5682_RESET, 0);
 regmap_write(regmap, RT5682_I2C_MODE, 1);
}
