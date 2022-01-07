
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct aic31xx_priv {int supplies; int regmap; int dev; } ;


 int ARRAY_SIZE (int ) ;
 int aic31xx_reset (struct aic31xx_priv*) ;
 int dev_err (int ,char*,int) ;
 int regcache_cache_only (int ,int) ;
 int regcache_sync (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 struct aic31xx_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int aic31xx_power_on(struct snd_soc_component *component)
{
 struct aic31xx_priv *aic31xx = snd_soc_component_get_drvdata(component);
 int ret;

 ret = regulator_bulk_enable(ARRAY_SIZE(aic31xx->supplies),
        aic31xx->supplies);
 if (ret)
  return ret;

 regcache_cache_only(aic31xx->regmap, 0);


 ret = aic31xx_reset(aic31xx);
 if (ret < 0)
  dev_err(aic31xx->dev, "Could not reset device: %d\n", ret);

 ret = regcache_sync(aic31xx->regmap);
 if (ret) {
  dev_err(component->dev,
   "Failed to restore cache: %d\n", ret);
  regcache_cache_only(aic31xx->regmap, 1);
  regulator_bulk_disable(ARRAY_SIZE(aic31xx->supplies),
           aic31xx->supplies);
  return ret;
 }

 return 0;
}
