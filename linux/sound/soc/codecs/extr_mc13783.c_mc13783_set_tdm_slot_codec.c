
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;
 int MC13783_SSI_NETWORK ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int mc13783_set_tdm_slot_codec(struct snd_soc_dai *dai,
 unsigned int tx_mask, unsigned int rx_mask, int slots,
 int slot_width)
{
 struct snd_soc_component *component = dai->component;
 unsigned int val = 0;
 unsigned int mask = 0x3f;

 if (slots != 4)
  return -EINVAL;

 if (tx_mask != 0x3)
  return -EINVAL;

 val |= (0x00 << 2);
 val |= (0x01 << 4);

 snd_soc_component_update_bits(component, MC13783_SSI_NETWORK, mask, val);

 return 0;
}
