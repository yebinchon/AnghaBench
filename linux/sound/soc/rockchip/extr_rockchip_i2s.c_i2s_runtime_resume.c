
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_i2s_dev {int mclk; int regmap; int dev; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;
 struct rk_i2s_dev* dev_get_drvdata (struct device*) ;
 int regcache_cache_only (int ,int) ;
 int regcache_mark_dirty (int ) ;
 int regcache_sync (int ) ;

__attribute__((used)) static int i2s_runtime_resume(struct device *dev)
{
 struct rk_i2s_dev *i2s = dev_get_drvdata(dev);
 int ret;

 ret = clk_prepare_enable(i2s->mclk);
 if (ret) {
  dev_err(i2s->dev, "clock enable failed %d\n", ret);
  return ret;
 }

 regcache_cache_only(i2s->regmap, 0);
 regcache_mark_dirty(i2s->regmap);

 ret = regcache_sync(i2s->regmap);
 if (ret)
  clk_disable_unprepare(i2s->mclk);

 return ret;
}
