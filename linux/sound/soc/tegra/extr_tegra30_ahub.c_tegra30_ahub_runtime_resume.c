
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int regmap_ahub; int regmap_apbif; int clk_d_audio; int clk_apbif; } ;


 TYPE_1__* ahub ;
 int clk_disable (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*,int) ;
 int regcache_cache_only (int ,int) ;

__attribute__((used)) static int tegra30_ahub_runtime_resume(struct device *dev)
{
 int ret;

 ret = clk_prepare_enable(ahub->clk_d_audio);
 if (ret) {
  dev_err(dev, "clk_enable d_audio failed: %d\n", ret);
  return ret;
 }
 ret = clk_prepare_enable(ahub->clk_apbif);
 if (ret) {
  dev_err(dev, "clk_enable apbif failed: %d\n", ret);
  clk_disable(ahub->clk_d_audio);
  return ret;
 }

 regcache_cache_only(ahub->regmap_apbif, 0);
 regcache_cache_only(ahub->regmap_ahub, 0);

 return 0;
}
