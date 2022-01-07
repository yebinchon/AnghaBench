
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct cs42l42_private {int supplies; int regmap; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int ARRAY_SIZE (int ) ;




 int dev_err (int ,char*,int) ;
 int regcache_cache_only (int ,int) ;
 int regcache_sync (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct cs42l42_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs42l42_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 struct cs42l42_private *cs42l42 = snd_soc_component_get_drvdata(component);
 int ret;

 switch (level) {
 case 130:
  break;
 case 129:
  break;
 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   regcache_cache_only(cs42l42->regmap, 0);
   regcache_sync(cs42l42->regmap);
   ret = regulator_bulk_enable(
      ARRAY_SIZE(cs42l42->supplies),
      cs42l42->supplies);
   if (ret != 0) {
    dev_err(component->dev,
     "Failed to enable regulators: %d\n",
     ret);
    return ret;
   }
  }
  break;
 case 131:

  regcache_cache_only(cs42l42->regmap, 1);
  regulator_bulk_disable(ARRAY_SIZE(cs42l42->supplies),
          cs42l42->supplies);
  break;
 }

 return 0;
}
