
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int regmap; } ;


 TYPE_1__* das ;
 int regmap_read (int ,int ,int *) ;

__attribute__((used)) static inline u32 tegra20_das_read(u32 reg)
{
 u32 val;

 regmap_read(das->regmap, reg, &val);
 return val;
}
