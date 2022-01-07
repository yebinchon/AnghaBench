
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct cs42l52_private {int regmap; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int CS42L52_PWRCTL1 ;
 int CS42L52_PWRCTL1_PDN_ALL ;
 int CS42L52_PWRCTL1_PDN_CODEC ;




 int regcache_cache_only (int ,int) ;
 int regcache_sync (int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct cs42l52_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int cs42l52_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 struct cs42l52_private *cs42l52 = snd_soc_component_get_drvdata(component);

 switch (level) {
 case 130:
  break;
 case 129:
  snd_soc_component_update_bits(component, CS42L52_PWRCTL1,
        CS42L52_PWRCTL1_PDN_CODEC, 0);
  break;
 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   regcache_cache_only(cs42l52->regmap, 0);
   regcache_sync(cs42l52->regmap);
  }
  snd_soc_component_write(component, CS42L52_PWRCTL1, CS42L52_PWRCTL1_PDN_ALL);
  break;
 case 131:
  snd_soc_component_write(component, CS42L52_PWRCTL1, CS42L52_PWRCTL1_PDN_ALL);
  regcache_cache_only(cs42l52->regmap, 1);
  break;
 }

 return 0;
}
