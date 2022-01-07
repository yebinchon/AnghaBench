
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dev; } ;
struct rt5663_priv {int codec_ver; int sysclk; int lrck; } ;




 int RT5663_AD_STO1_TRACK_MASK ;
 int RT5663_ASRC_2 ;
 int RT5663_ASRC_3 ;
 int RT5663_DA_STO1_TRACK_MASK ;
 int RT5663_V2_AD_STO1_TRACK_MASK ;
 int dev_err (int ,char*) ;
 struct rt5663_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int rt5663_i2s_use_asrc(struct snd_soc_dapm_widget *source,
 struct snd_soc_dapm_widget *sink)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(source->dapm);
 struct rt5663_priv *rt5663 = snd_soc_component_get_drvdata(component);
 int da_asrc_en, ad_asrc_en;

 da_asrc_en = (snd_soc_component_read32(component, RT5663_ASRC_2) &
  RT5663_DA_STO1_TRACK_MASK) ? 1 : 0;
 switch (rt5663->codec_ver) {
 case 128:
  ad_asrc_en = (snd_soc_component_read32(component, RT5663_ASRC_3) &
   RT5663_V2_AD_STO1_TRACK_MASK) ? 1 : 0;
  break;
 case 129:
  ad_asrc_en = (snd_soc_component_read32(component, RT5663_ASRC_2) &
   RT5663_AD_STO1_TRACK_MASK) ? 1 : 0;
  break;
 default:
  dev_err(component->dev, "Unknown CODEC Version\n");
  return 1;
 }

 if (da_asrc_en || ad_asrc_en)
  if (rt5663->sysclk > rt5663->lrck * 384)
   return 1;

 dev_err(component->dev, "sysclk < 384 x fs, disable i2s asrc\n");

 return 0;
}
