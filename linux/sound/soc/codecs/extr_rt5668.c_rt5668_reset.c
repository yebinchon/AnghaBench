
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int RT5668_I2C_MODE ;
 int RT5668_RESET ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static void rt5668_reset(struct regmap *regmap)
{
 regmap_write(regmap, RT5668_RESET, 0);
 regmap_write(regmap, RT5668_I2C_MODE, 1);
}
