
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int RT1305_RESET ;
 int regmap_write (struct regmap*,int ,int ) ;

__attribute__((used)) static void rt1305_reset(struct regmap *regmap)
{
 regmap_write(regmap, RT1305_RESET, 0);
}
