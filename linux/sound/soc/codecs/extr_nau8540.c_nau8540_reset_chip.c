
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int NAU8540_REG_SW_RESET ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static void nau8540_reset_chip(struct regmap *regmap)
{
 regmap_write(regmap, NAU8540_REG_SW_RESET, 0x00);
 regmap_write(regmap, NAU8540_REG_SW_RESET, 0x00);
}
