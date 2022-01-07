
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct rt5663_priv {int codec_ver; } ;




 int EINVAL ;
 unsigned int RT5663_AD_STEREO_FILTER ;
 unsigned int RT5663_AD_STO1_TRACK_MASK ;
 unsigned int RT5663_AD_STO1_TRACK_SHIFT ;
 int RT5663_ASRC_2 ;
 int RT5663_ASRC_3 ;


 unsigned int RT5663_DA_STEREO_FILTER ;
 unsigned int RT5663_DA_STO1_TRACK_MASK ;
 unsigned int RT5663_DA_STO1_TRACK_SHIFT ;
 unsigned int RT5663_V2_AD_STO1_TRACK_MASK ;
 unsigned int RT5663_V2_AD_STO1_TRACK_SHIFT ;
 int dev_err (int ,char*) ;
 struct rt5663_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,unsigned int,unsigned int) ;

int rt5663_sel_asrc_clk_src(struct snd_soc_component *component,
  unsigned int filter_mask, unsigned int clk_src)
{
 struct rt5663_priv *rt5663 = snd_soc_component_get_drvdata(component);
 unsigned int asrc2_mask = 0;
 unsigned int asrc2_value = 0;
 unsigned int asrc3_mask = 0;
 unsigned int asrc3_value = 0;

 switch (clk_src) {
 case 128:
 case 129:
  break;

 default:
  return -EINVAL;
 }

 if (filter_mask & RT5663_DA_STEREO_FILTER) {
  asrc2_mask |= RT5663_DA_STO1_TRACK_MASK;
  asrc2_value |= clk_src << RT5663_DA_STO1_TRACK_SHIFT;
 }

 if (filter_mask & RT5663_AD_STEREO_FILTER) {
  switch (rt5663->codec_ver) {
  case 130:
   asrc3_mask |= RT5663_V2_AD_STO1_TRACK_MASK;
   asrc3_value |= clk_src << RT5663_V2_AD_STO1_TRACK_SHIFT;
   break;
  case 131:
   asrc2_mask |= RT5663_AD_STO1_TRACK_MASK;
   asrc2_value |= clk_src << RT5663_AD_STO1_TRACK_SHIFT;
   break;
  default:
   dev_err(component->dev, "Unknown CODEC Version\n");
  }
 }

 if (asrc2_mask)
  snd_soc_component_update_bits(component, RT5663_ASRC_2, asrc2_mask,
   asrc2_value);

 if (asrc3_mask)
  snd_soc_component_update_bits(component, RT5663_ASRC_3, asrc3_mask,
   asrc3_value);

 return 0;
}
