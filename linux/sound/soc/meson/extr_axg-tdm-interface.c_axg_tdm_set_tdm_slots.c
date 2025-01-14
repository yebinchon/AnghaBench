
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct snd_soc_dai {TYPE_3__* driver; int dev; scalar_t__ capture_dma_data; scalar_t__ playback_dma_data; } ;
struct axg_tdm_stream {int * mask; } ;
struct axg_tdm_iface {unsigned int slots; unsigned int slot_width; } ;
struct TYPE_5__ {unsigned int channels_max; unsigned int formats; } ;
struct TYPE_4__ {unsigned int channels_max; unsigned int formats; } ;
struct TYPE_6__ {TYPE_2__ capture; TYPE_1__ playback; } ;


 int EINVAL ;
 unsigned int SNDRV_PCM_FMTBIT_S16_LE ;
 unsigned int SNDRV_PCM_FMTBIT_S20_LE ;
 unsigned int SNDRV_PCM_FMTBIT_S24_LE ;
 unsigned int SNDRV_PCM_FMTBIT_S32_LE ;
 unsigned int SNDRV_PCM_FMTBIT_S8 ;
 unsigned int axg_tdm_slots_total (int *) ;
 int dev_err (int ,char*,...) ;
 struct axg_tdm_iface* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

int axg_tdm_set_tdm_slots(struct snd_soc_dai *dai, u32 *tx_mask,
     u32 *rx_mask, unsigned int slots,
     unsigned int slot_width)
{
 struct axg_tdm_iface *iface = snd_soc_dai_get_drvdata(dai);
 struct axg_tdm_stream *tx = (struct axg_tdm_stream *)
  dai->playback_dma_data;
 struct axg_tdm_stream *rx = (struct axg_tdm_stream *)
  dai->capture_dma_data;
 unsigned int tx_slots, rx_slots;
 unsigned int fmt = 0;

 tx_slots = axg_tdm_slots_total(tx_mask);
 rx_slots = axg_tdm_slots_total(rx_mask);


 if (!tx_slots && !rx_slots) {
  dev_err(dai->dev, "interface has no slot\n");
  return -EINVAL;
 }

 iface->slots = slots;

 switch (slot_width) {
 case 0:
  slot_width = 32;

 case 32:
  fmt |= SNDRV_PCM_FMTBIT_S32_LE;

 case 24:
  fmt |= SNDRV_PCM_FMTBIT_S24_LE;
  fmt |= SNDRV_PCM_FMTBIT_S20_LE;

 case 16:
  fmt |= SNDRV_PCM_FMTBIT_S16_LE;

 case 8:
  fmt |= SNDRV_PCM_FMTBIT_S8;
  break;
 default:
  dev_err(dai->dev, "unsupported slot width: %d\n", slot_width);
  return -EINVAL;
 }

 iface->slot_width = slot_width;


 if (tx) {
  tx->mask = tx_mask;
  dai->driver->playback.channels_max = tx_slots;
  dai->driver->playback.formats = fmt;
 }

 if (rx) {
  rx->mask = rx_mask;
  dai->driver->capture.channels_max = rx_slots;
  dai->driver->capture.formats = fmt;
 }

 return 0;
}
