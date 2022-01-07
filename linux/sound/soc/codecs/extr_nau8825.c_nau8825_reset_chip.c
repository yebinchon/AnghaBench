
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int NAU8825_REG_RESET ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static void nau8825_reset_chip(struct regmap *regmap)
{
 regmap_write(regmap, NAU8825_REG_RESET, 0x00);
 regmap_write(regmap, NAU8825_REG_RESET, 0x00);
}
