
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct sgtl5000_priv {int regmap; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int SGTL5000_CHIP_ANA_POWER ;
 int SGTL5000_REFTOP_POWERUP ;




 int regcache_cache_only (int ,int) ;
 int regcache_sync (int ) ;
 struct sgtl5000_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int sgtl5000_set_bias_level(struct snd_soc_component *component,
       enum snd_soc_bias_level level)
{
 struct sgtl5000_priv *sgtl = snd_soc_component_get_drvdata(component);
 int ret;

 switch (level) {
 case 130:
 case 129:
 case 128:
  regcache_cache_only(sgtl->regmap, 0);
  ret = regcache_sync(sgtl->regmap);
  if (ret) {
   regcache_cache_only(sgtl->regmap, 1);
   return ret;
  }

  snd_soc_component_update_bits(component, SGTL5000_CHIP_ANA_POWER,
        SGTL5000_REFTOP_POWERUP,
        SGTL5000_REFTOP_POWERUP);
  break;
 case 131:
  regcache_cache_only(sgtl->regmap, 1);
  snd_soc_component_update_bits(component, SGTL5000_CHIP_ANA_POWER,
        SGTL5000_REFTOP_POWERUP, 0);
  break;
 }

 return 0;
}
