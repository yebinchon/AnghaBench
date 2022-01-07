
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int regmap_ahub; } ;


 TYPE_1__* ahub ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static inline void tegra30_audio_write(u32 reg, u32 val)
{
 regmap_write(ahub->regmap_ahub, reg, val);
}
