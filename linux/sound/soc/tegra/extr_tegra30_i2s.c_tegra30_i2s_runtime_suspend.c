
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra30_i2s {int clk_i2s; int regmap; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct tegra30_i2s* dev_get_drvdata (struct device*) ;
 int regcache_cache_only (int ,int) ;

__attribute__((used)) static int tegra30_i2s_runtime_suspend(struct device *dev)
{
 struct tegra30_i2s *i2s = dev_get_drvdata(dev);

 regcache_cache_only(i2s->regmap, 1);

 clk_disable_unprepare(i2s->clk_i2s);

 return 0;
}
