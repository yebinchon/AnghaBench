
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_i2s_dev {int mclk; int regmap; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct rk_i2s_dev* dev_get_drvdata (struct device*) ;
 int regcache_cache_only (int ,int) ;

__attribute__((used)) static int i2s_runtime_suspend(struct device *dev)
{
 struct rk_i2s_dev *i2s = dev_get_drvdata(dev);

 regcache_cache_only(i2s->regmap, 1);
 clk_disable_unprepare(i2s->mclk);

 return 0;
}
