
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int clk_d_audio; int clk_apbif; int regmap_ahub; int regmap_apbif; } ;


 TYPE_1__* ahub ;
 int clk_disable_unprepare (int ) ;
 int regcache_cache_only (int ,int) ;

__attribute__((used)) static int tegra30_ahub_runtime_suspend(struct device *dev)
{
 regcache_cache_only(ahub->regmap_apbif, 1);
 regcache_cache_only(ahub->regmap_ahub, 1);

 clk_disable_unprepare(ahub->clk_apbif);
 clk_disable_unprepare(ahub->clk_d_audio);

 return 0;
}
