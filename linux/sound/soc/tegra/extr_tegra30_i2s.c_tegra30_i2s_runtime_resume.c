
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra30_i2s {int regmap; int clk_i2s; } ;
struct device {int dummy; } ;


 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*,int) ;
 struct tegra30_i2s* dev_get_drvdata (struct device*) ;
 int regcache_cache_only (int ,int) ;

__attribute__((used)) static int tegra30_i2s_runtime_resume(struct device *dev)
{
 struct tegra30_i2s *i2s = dev_get_drvdata(dev);
 int ret;

 ret = clk_prepare_enable(i2s->clk_i2s);
 if (ret) {
  dev_err(dev, "clk_enable failed: %d\n", ret);
  return ret;
 }

 regcache_cache_only(i2s->regmap, 0);

 return 0;
}
