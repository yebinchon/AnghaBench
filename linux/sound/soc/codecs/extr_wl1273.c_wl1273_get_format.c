
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1273_priv {int mode; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;
 unsigned int SND_SOC_DAIFMT_CBM_CFM ;
 unsigned int SND_SOC_DAIFMT_DSP_A ;
 unsigned int SND_SOC_DAIFMT_I2S ;
 unsigned int SND_SOC_DAIFMT_IB_NF ;
 unsigned int SND_SOC_DAIFMT_NB_NF ;



 struct wl1273_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

int wl1273_get_format(struct snd_soc_component *component, unsigned int *fmt)
{
 struct wl1273_priv *wl1273;

 if (component == ((void*)0) || fmt == ((void*)0))
  return -EINVAL;

 wl1273 = snd_soc_component_get_drvdata(component);

 switch (wl1273->mode) {
 case 129:
 case 128:
  *fmt = SND_SOC_DAIFMT_I2S |
   SND_SOC_DAIFMT_NB_NF |
   SND_SOC_DAIFMT_CBM_CFM;

  break;
 case 130:
  *fmt = SND_SOC_DAIFMT_DSP_A |
   SND_SOC_DAIFMT_IB_NF |
   SND_SOC_DAIFMT_CBM_CFM;

  break;
 default:
  return -EINVAL;
 }

 return 0;
}
