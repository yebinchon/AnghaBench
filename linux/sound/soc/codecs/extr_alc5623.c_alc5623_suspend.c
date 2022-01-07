
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct alc5623_priv {int regmap; } ;


 int regcache_cache_only (int ,int) ;
 struct alc5623_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int alc5623_suspend(struct snd_soc_component *component)
{
 struct alc5623_priv *alc5623 = snd_soc_component_get_drvdata(component);

 regcache_cache_only(alc5623->regmap, 1);

 return 0;
}
