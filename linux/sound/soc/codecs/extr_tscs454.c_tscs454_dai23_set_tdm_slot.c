
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;


 int EINVAL ;
 unsigned int FV_PCMDSSP_16 ;
 unsigned int FV_PCMDSSP_24 ;
 unsigned int FV_PCMDSSP_32 ;
 unsigned int FV_PCMSIP_1 ;
 unsigned int FV_PCMSIP_2 ;
 unsigned int FV_PCMSOP_1 ;
 unsigned int FV_PCMSOP_2 ;
 unsigned int R_PCMP2CTL1 ;
 unsigned int R_PCMP3CTL1 ;


 int dev_err (int ,char*,int,...) ;
 int snd_soc_component_write (struct snd_soc_component*,unsigned int,unsigned int) ;

__attribute__((used)) static int tscs454_dai23_set_tdm_slot(struct snd_soc_dai *dai,
  unsigned int tx_mask, unsigned int rx_mask, int slots,
  int slot_width)
{
 struct snd_soc_component *component = dai->component;
 unsigned int reg;
 unsigned int val;
 int ret;

 if (!slots)
  return 0;

 if (tx_mask >= (1 << slots) || rx_mask >= (1 << slots)) {
  ret = -EINVAL;
  dev_err(component->dev, "Invalid TDM slot mask (%d)\n", ret);
  return ret;
 }

 switch (dai->id) {
 case 129:
  reg = R_PCMP2CTL1;
  break;
 case 128:
  reg = R_PCMP3CTL1;
  break;
 default:
  ret = -EINVAL;
  dev_err(component->dev, "Unrecognized interface %d (%d)\n",
    dai->id, ret);
  return ret;
 }

 switch (slots) {
 case 1:
  val = FV_PCMSOP_1 | FV_PCMSIP_1;
  break;
 case 2:
  val = FV_PCMSOP_2 | FV_PCMSIP_2;
  break;
 default:
  ret = -EINVAL;
  dev_err(component->dev, "Invalid number of slots (%d)\n", ret);
  return ret;
 }

 switch (slot_width) {
 case 16:
  val = val | FV_PCMDSSP_16;
  break;
 case 24:
  val = val | FV_PCMDSSP_24;
  break;
 case 32:
  val = val | FV_PCMDSSP_32;
  break;
 default:
  ret = -EINVAL;
  dev_err(component->dev, "Invalid TDM slot width (%d)\n", ret);
  return ret;
 }
 ret = snd_soc_component_write(component, reg, val);
 if (ret < 0) {
  dev_err(component->dev, "Failed to set slots (%d)\n", ret);
  return ret;
 }

 return 0;
}
