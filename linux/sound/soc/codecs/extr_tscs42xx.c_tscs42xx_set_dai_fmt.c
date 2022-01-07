
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;


 int EINVAL ;
 int RM_AIC1_MS ;
 int RV_AIC1_MS_MASTER ;
 int R_AIC1 ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 int dev_err (int ,char*,int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int tscs42xx_set_dai_fmt(struct snd_soc_dai *codec_dai,
  unsigned int fmt)
{
 struct snd_soc_component *component = codec_dai->component;
 int ret;


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 128:
  ret = snd_soc_component_update_bits(component,
    R_AIC1, RM_AIC1_MS, RV_AIC1_MS_MASTER);
  if (ret < 0) {
   dev_err(component->dev,
    "Failed to set codec DAI master (%d)\n", ret);
   return ret;
  }
  break;
 default:
  ret = -EINVAL;
  dev_err(component->dev, "Unsupported format (%d)\n", ret);
  return ret;
 }

 return 0;
}
