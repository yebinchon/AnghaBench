
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct max9850_priv {int regmap; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int dev_err (int ,char*,int) ;
 int regcache_sync (int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct max9850_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int max9850_set_bias_level(struct snd_soc_component *component,
      enum snd_soc_bias_level level)
{
 struct max9850_priv *max9850 = snd_soc_component_get_drvdata(component);
 int ret;

 switch (level) {
 case 130:
  break;
 case 129:
  break;
 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   ret = regcache_sync(max9850->regmap);
   if (ret) {
    dev_err(component->dev,
     "Failed to sync cache: %d\n", ret);
    return ret;
   }
  }
  break;
 case 131:
  break;
 }
 return 0;
}
