
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct aic31xx_priv {int supplies; int regmap; } ;


 int ARRAY_SIZE (int ) ;
 int regcache_cache_only (int ,int) ;
 int regulator_bulk_disable (int ,int ) ;
 struct aic31xx_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void aic31xx_power_off(struct snd_soc_component *component)
{
 struct aic31xx_priv *aic31xx = snd_soc_component_get_drvdata(component);

 regcache_cache_only(aic31xx->regmap, 1);
 regulator_bulk_disable(ARRAY_SIZE(aic31xx->supplies),
          aic31xx->supplies);
}
