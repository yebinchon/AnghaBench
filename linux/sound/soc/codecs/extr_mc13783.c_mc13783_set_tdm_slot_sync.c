
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;


 int mc13783_set_tdm_slot_codec (struct snd_soc_dai*,unsigned int,unsigned int,int,int) ;
 int mc13783_set_tdm_slot_dac (struct snd_soc_dai*,unsigned int,unsigned int,int,int) ;

__attribute__((used)) static int mc13783_set_tdm_slot_sync(struct snd_soc_dai *dai,
 unsigned int tx_mask, unsigned int rx_mask, int slots,
 int slot_width)
{
 int ret;

 ret = mc13783_set_tdm_slot_dac(dai, tx_mask, rx_mask, slots,
   slot_width);
 if (ret)
  return ret;

 ret = mc13783_set_tdm_slot_codec(dai, tx_mask, rx_mask, slots,
   slot_width);

 return ret;
}
