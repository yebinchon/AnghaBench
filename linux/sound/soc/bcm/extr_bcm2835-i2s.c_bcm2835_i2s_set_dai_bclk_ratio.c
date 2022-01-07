
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct bcm2835_i2s_dev {int tdm_slots; int rx_mask; int tx_mask; unsigned int slot_width; unsigned int frame_length; } ;


 unsigned int BCM2835_I2S_MAX_FRAME_LENGTH ;
 int EINVAL ;
 struct bcm2835_i2s_dev* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int bcm2835_i2s_set_dai_bclk_ratio(struct snd_soc_dai *dai,
          unsigned int ratio)
{
 struct bcm2835_i2s_dev *dev = snd_soc_dai_get_drvdata(dai);

 if (!ratio) {
  dev->tdm_slots = 0;
  return 0;
 }

 if (ratio > BCM2835_I2S_MAX_FRAME_LENGTH)
  return -EINVAL;

 dev->tdm_slots = 2;
 dev->rx_mask = 0x03;
 dev->tx_mask = 0x03;
 dev->slot_width = ratio / 2;
 dev->frame_length = ratio;

 return 0;
}
