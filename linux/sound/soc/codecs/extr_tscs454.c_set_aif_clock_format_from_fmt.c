
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;


 int EINVAL ;
 int FM_I2SPCTL_BCLKP ;
 int FM_I2SPCTL_LRCLKP ;
 unsigned int FV_BCLKP_INVERTED ;
 unsigned int FV_BCLKP_NOT_INVERTED ;
 unsigned int FV_LRCLKP_INVERTED ;
 unsigned int FV_LRCLKP_NOT_INVERTED ;
 unsigned int R_I2SP1CTL ;
 unsigned int R_I2SP2CTL ;
 unsigned int R_I2SP3CTL ;


 unsigned int SND_SOC_DAIFMT_INV_MASK ;





 int dev_err (int ,char*,unsigned int,...) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,unsigned int,int,unsigned int) ;

__attribute__((used)) static inline int
set_aif_clock_format_from_fmt(struct snd_soc_component *component,
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

 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 131:
  val = FV_BCLKP_NOT_INVERTED | FV_LRCLKP_NOT_INVERTED;
  break;
 case 132:
  val = FV_BCLKP_NOT_INVERTED | FV_LRCLKP_INVERTED;
  break;
 case 133:
  val = FV_BCLKP_INVERTED | FV_LRCLKP_NOT_INVERTED;
  break;
 case 134:
  val = FV_BCLKP_INVERTED | FV_LRCLKP_INVERTED;
  break;
 default:
  ret = -EINVAL;
  dev_err(component->dev, "Format unknown (%d)\n", ret);
  return ret;
 }

 ret = snd_soc_component_update_bits(component, reg,
   FM_I2SPCTL_BCLKP | FM_I2SPCTL_LRCLKP, val);
 if (ret < 0) {
  dev_err(component->dev,
    "Failed to set clock polarity for DAI%d (%d)\n",
    dai_id + 1, ret);
  return ret;
 }

 return 0;
}
