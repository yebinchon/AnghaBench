
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct alc5623_priv {int regmap; } ;


 int dev_err (int ,char*,int) ;
 int regcache_cache_only (int ,int) ;
 int regcache_sync (int ) ;
 struct alc5623_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int alc5623_resume(struct snd_soc_component *component)
{
 struct alc5623_priv *alc5623 = snd_soc_component_get_drvdata(component);
 int ret;


 regcache_cache_only(alc5623->regmap, 0);
 ret = regcache_sync(alc5623->regmap);
 if (ret != 0) {
  dev_err(component->dev, "Failed to sync register cache: %d\n",
   ret);
  regcache_cache_only(alc5623->regmap, 1);
  return ret;
 }

 return 0;
}
