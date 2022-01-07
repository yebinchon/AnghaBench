
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int regmap_apbif; } ;


 TYPE_1__* ahub ;
 int regmap_read (int ,int ,int *) ;

__attribute__((used)) static inline u32 tegra30_apbif_read(u32 reg)
{
 u32 val;

 regmap_read(ahub->regmap_apbif, reg, &val);
 return val;
}
