
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; int active; } ;


 int dev_err (int ,char*,int) ;
 int sst_fill_ssp_slot (struct snd_soc_dai*,unsigned int,unsigned int,int,int) ;

__attribute__((used)) static int sst_platform_set_ssp_slot(struct snd_soc_dai *dai,
   unsigned int tx_mask, unsigned int rx_mask,
   int slots, int slot_width) {
 int ret = 0;

 if (!dai->active)
  return ret;

 ret = sst_fill_ssp_slot(dai, tx_mask, rx_mask, slots, slot_width);
 if (ret < 0)
  dev_err(dai->dev, "sst_fill_ssp_slot failed..%d\n", ret);

 return ret;
}
