
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct max98373_priv {int tdm_mode; int regmap; } ;


 int MAX98373_GLOBAL_EN_MASK ;
 int MAX98373_R20FF_GLOBAL_SHDN ;


 int regmap_update_bits (int ,int ,int ,int) ;
 struct max98373_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int max98373_dac_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct max98373_priv *max98373 = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 128:
  regmap_update_bits(max98373->regmap,
   MAX98373_R20FF_GLOBAL_SHDN,
   MAX98373_GLOBAL_EN_MASK, 1);
  break;
 case 129:
  regmap_update_bits(max98373->regmap,
   MAX98373_R20FF_GLOBAL_SHDN,
   MAX98373_GLOBAL_EN_MASK, 0);
  max98373->tdm_mode = 0;
  break;
 default:
  return 0;
 }
 return 0;
}
