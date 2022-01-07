
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct cs42l73_private {int shutdwn_delay; int regmap; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int CS42L73_DMMCC ;
 int CS42L73_MCLKDIS ;
 int CS42L73_PDN ;
 int CS42L73_PWRCTL1 ;




 int mdelay (int) ;
 int regcache_cache_only (int ,int) ;
 int regcache_sync (int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct cs42l73_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static int cs42l73_set_bias_level(struct snd_soc_component *component,
      enum snd_soc_bias_level level)
{
 struct cs42l73_private *cs42l73 = snd_soc_component_get_drvdata(component);

 switch (level) {
 case 130:
  snd_soc_component_update_bits(component, CS42L73_DMMCC, CS42L73_MCLKDIS, 0);
  snd_soc_component_update_bits(component, CS42L73_PWRCTL1, CS42L73_PDN, 0);
  break;

 case 129:
  break;

 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   regcache_cache_only(cs42l73->regmap, 0);
   regcache_sync(cs42l73->regmap);
  }
  snd_soc_component_update_bits(component, CS42L73_PWRCTL1, CS42L73_PDN, 1);
  break;

 case 131:
  snd_soc_component_update_bits(component, CS42L73_PWRCTL1, CS42L73_PDN, 1);
  if (cs42l73->shutdwn_delay > 0) {
   mdelay(cs42l73->shutdwn_delay);
   cs42l73->shutdwn_delay = 0;
  } else {
   mdelay(15);


  }
  snd_soc_component_update_bits(component, CS42L73_DMMCC, CS42L73_MCLKDIS, 1);
  break;
 }
 return 0;
}
