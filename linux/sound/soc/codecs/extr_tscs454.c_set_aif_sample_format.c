
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
typedef int snd_pcm_format_t ;


 int EINVAL ;
 int FM_I2SPCTL_WL ;
 unsigned int FV_WL_16 ;
 unsigned int FV_WL_20 ;
 unsigned int FV_WL_24 ;
 unsigned int FV_WL_32 ;
 unsigned int R_I2SP1CTL ;
 unsigned int R_I2SP2CTL ;
 unsigned int R_I2SP3CTL ;
 int dev_err (int ,char*,int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,unsigned int,int ,unsigned int) ;

__attribute__((used)) static int set_aif_sample_format(struct snd_soc_component *component,
  snd_pcm_format_t format,
  int aif_id)
{
 unsigned int reg;
 unsigned int width;
 int ret;

 switch (format) {
 case 135:
  width = FV_WL_16;
  break;
 case 134:
  width = FV_WL_20;
  break;
 case 133:
  width = FV_WL_24;
  break;
 case 132:
 case 131:
  width = FV_WL_32;
  break;
 default:
  ret = -EINVAL;
  dev_err(component->dev, "Unsupported format width (%d)\n", ret);
  return ret;
 }

 switch (aif_id) {
 case 130:
  reg = R_I2SP1CTL;
  break;
 case 129:
  reg = R_I2SP2CTL;
  break;
 case 128:
  reg = R_I2SP3CTL;
  break;
 default:
  ret = -EINVAL;
  dev_err(component->dev, "AIF ID not recognized (%d)\n", ret);
  return ret;
 }

 ret = snd_soc_component_update_bits(component,
   reg, FM_I2SPCTL_WL, width);
 if (ret < 0) {
  dev_err(component->dev,
    "Failed to set sample width (%d)\n", ret);
  return ret;
 }

 return 0;
}
