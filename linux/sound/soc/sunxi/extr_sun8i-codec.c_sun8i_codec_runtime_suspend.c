
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun8i_codec {int clk_bus; int clk_module; int regmap; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct sun8i_codec* dev_get_drvdata (struct device*) ;
 int regcache_cache_only (int ,int) ;
 int regcache_mark_dirty (int ) ;

__attribute__((used)) static int sun8i_codec_runtime_suspend(struct device *dev)
{
 struct sun8i_codec *scodec = dev_get_drvdata(dev);

 regcache_cache_only(scodec->regmap, 1);
 regcache_mark_dirty(scodec->regmap);

 clk_disable_unprepare(scodec->clk_module);
 clk_disable_unprepare(scodec->clk_bus);

 return 0;
}
