
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct ml26124_priv {int regmap; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int ML26124_BLT_ALL_ON ;
 int ML26124_BLT_PREAMP_ON ;
 int ML26124_MICBEN_ON ;
 int ML26124_PW_REF_PW_MNG ;
 int ML26124_PW_SPAMP_PW_MNG ;
 int ML26124_R26_MASK ;
 int ML26124_VMID ;




 int msleep (int) ;
 int regcache_sync (int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct ml26124_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int ml26124_set_bias_level(struct snd_soc_component *component,
  enum snd_soc_bias_level level)
{
 struct ml26124_priv *priv = snd_soc_component_get_drvdata(component);

 switch (level) {
 case 130:
  snd_soc_component_update_bits(component, ML26124_PW_SPAMP_PW_MNG,
        ML26124_R26_MASK, ML26124_BLT_PREAMP_ON);
  msleep(100);
  snd_soc_component_update_bits(component, ML26124_PW_SPAMP_PW_MNG,
        ML26124_R26_MASK,
        ML26124_MICBEN_ON | ML26124_BLT_ALL_ON);
  break;
 case 129:
  break;
 case 128:

  if (snd_soc_component_get_bias_level(component) == 131) {
   snd_soc_component_update_bits(component, ML26124_PW_REF_PW_MNG,
         ML26124_VMID, ML26124_VMID);
   msleep(500);
   regcache_sync(priv->regmap);
  }
  break;
 case 131:

  snd_soc_component_update_bits(component, ML26124_PW_REF_PW_MNG,
        ML26124_VMID, 0);
  break;
 }
 return 0;
}
