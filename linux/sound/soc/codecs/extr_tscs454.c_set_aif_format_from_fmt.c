
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;


 int EINVAL ;
 int FM_I2SPCTL_FORMAT ;
 unsigned int FV_FORMAT_I2S ;
 unsigned int FV_FORMAT_LEFT ;
 unsigned int FV_FORMAT_RIGHT ;
 unsigned int FV_FORMAT_TDM ;
 unsigned int R_I2SP1CTL ;
 unsigned int R_I2SP2CTL ;
 unsigned int R_I2SP3CTL ;


 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;






 int dev_err (int ,char*,unsigned int,...) ;
 int set_aif_tdm_delay (struct snd_soc_component*,unsigned int,int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,unsigned int,int ,unsigned int) ;

__attribute__((used)) static inline int set_aif_format_from_fmt(struct snd_soc_component *component,
  unsigned int dai_id, unsigned int fmt)
{
 unsigned int reg;
 unsigned int val;
 int ret;

 switch (dai_id) {
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
  dev_err(component->dev,
    "DAI %d unknown (%d)\n", dai_id + 1, ret);
  return ret;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 131:
  val = FV_FORMAT_RIGHT;
  break;
 case 132:
  val = FV_FORMAT_LEFT;
  break;
 case 133:
  val = FV_FORMAT_I2S;
  break;
 case 135:
  ret = set_aif_tdm_delay(component, dai_id, 1);
  if (ret < 0)
   return ret;
  val = FV_FORMAT_TDM;
  break;
 case 134:
  ret = set_aif_tdm_delay(component, dai_id, 0);
  if (ret < 0)
   return ret;
  val = FV_FORMAT_TDM;
  break;
 default:
  ret = -EINVAL;
  dev_err(component->dev, "Format unsupported (%d)\n", ret);
  return ret;
 }

 ret = snd_soc_component_update_bits(component,
   reg, FM_I2SPCTL_FORMAT, val);
 if (ret < 0) {
  dev_err(component->dev, "Failed to set DAI %d format (%d)\n",
    dai_id + 1, ret);
  return ret;
 }

 return 0;
}
