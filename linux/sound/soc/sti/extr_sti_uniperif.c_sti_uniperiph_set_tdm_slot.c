
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int slots; int slot_width; unsigned int mask; int avail_slots; } ;
struct uniperif {int dev; TYPE_2__ tdm_slot; } ;
struct TYPE_3__ {struct uniperif* uni; } ;
struct sti_uniperiph_data {TYPE_1__ dai_data; } ;
struct snd_soc_dai {int dummy; } ;


 int EINVAL ;
 scalar_t__ UNIPERIF_ALLOWED_FRAME_SZ ;
 int UNIPERIF_MAX_FRAME_SZ ;
 int UNIPERIF_TYPE_IS_TDM (struct uniperif*) ;
 int dev_err (int ,char*,...) ;
 struct sti_uniperiph_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

int sti_uniperiph_set_tdm_slot(struct snd_soc_dai *dai, unsigned int tx_mask,
          unsigned int rx_mask, int slots,
          int slot_width)
{
 struct sti_uniperiph_data *priv = snd_soc_dai_get_drvdata(dai);
 struct uniperif *uni = priv->dai_data.uni;
 int i, frame_size, avail_slots;

 if (!UNIPERIF_TYPE_IS_TDM(uni)) {
  dev_err(uni->dev, "cpu dai not in tdm mode\n");
  return -EINVAL;
 }


 uni->tdm_slot.slots = slots;
 uni->tdm_slot.slot_width = slot_width;

 uni->tdm_slot.mask = (tx_mask != 0) ? tx_mask : rx_mask;


 for (i = 0, avail_slots = 0; i < uni->tdm_slot.slots; i++) {
  if ((uni->tdm_slot.mask >> i) & 0x01)
   avail_slots++;
 }
 uni->tdm_slot.avail_slots = avail_slots;


 frame_size = uni->tdm_slot.avail_slots * uni->tdm_slot.slot_width / 8;


 if ((frame_size > UNIPERIF_MAX_FRAME_SZ) ||
     (frame_size & ~(int)UNIPERIF_ALLOWED_FRAME_SZ)) {
  dev_err(uni->dev, "frame size not allowed: %d bytes\n",
   frame_size);
  return -EINVAL;
 }

 return 0;
}
