
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun8i_codec {int clk_module; int clk_bus; int regmap; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*) ;
 struct sun8i_codec* dev_get_drvdata (struct device*) ;
 int regcache_cache_only (int ,int) ;
 int regcache_sync (int ) ;

__attribute__((used)) static int sun8i_codec_runtime_resume(struct device *dev)
{
 struct sun8i_codec *scodec = dev_get_drvdata(dev);
 int ret;

 ret = clk_prepare_enable(scodec->clk_module);
 if (ret) {
  dev_err(dev, "Failed to enable the module clock\n");
  return ret;
 }

 ret = clk_prepare_enable(scodec->clk_bus);
 if (ret) {
  dev_err(dev, "Failed to enable the bus clock\n");
  goto err_disable_modclk;
 }

 regcache_cache_only(scodec->regmap, 0);

 ret = regcache_sync(scodec->regmap);
 if (ret) {
  dev_err(dev, "Failed to sync regmap cache\n");
  goto err_disable_clk;
 }

 return 0;

err_disable_clk:
 clk_disable_unprepare(scodec->clk_bus);

err_disable_modclk:
 clk_disable_unprepare(scodec->clk_module);

 return ret;
}
