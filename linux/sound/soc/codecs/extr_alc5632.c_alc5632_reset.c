
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int ALC5632_RESET ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static inline int alc5632_reset(struct regmap *map)
{
 return regmap_write(map, ALC5632_RESET, 0x59B4);
}
