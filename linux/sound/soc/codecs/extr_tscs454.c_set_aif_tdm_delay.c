
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;


 int EINVAL ;
 int FM_TDMCTL0_BDELAY ;
 unsigned int R_PCMP2CTL0 ;
 unsigned int R_PCMP3CTL0 ;
 unsigned int R_TDMCTL0 ;



 int dev_err (int ,char*,int,...) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,unsigned int,int ,int) ;

__attribute__((used)) static inline int set_aif_tdm_delay(struct snd_soc_component *component,
  unsigned int dai_id, bool delay)
{
 unsigned int reg;
 int ret;

 switch (dai_id) {
 case 130:
  reg = R_TDMCTL0;
  break;
 case 129:
  reg = R_PCMP2CTL0;
  break;
 case 128:
  reg = R_PCMP3CTL0;
  break;
 default:
  ret = -EINVAL;
  dev_err(component->dev,
    "DAI %d unknown (%d)\n", dai_id + 1, ret);
  return ret;
 }
 ret = snd_soc_component_update_bits(component,
   reg, FM_TDMCTL0_BDELAY, delay);
 if (ret < 0) {
  dev_err(component->dev, "Failed to setup tdm format (%d)\n",
    ret);
  return ret;
 }

 return 0;
}
