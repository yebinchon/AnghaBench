
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int WM9081_SOFTWARE_RESET ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static int wm9081_reset(struct regmap *map)
{
 return regmap_write(map, WM9081_SOFTWARE_RESET, 0x9081);
}
