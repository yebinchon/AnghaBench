
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snd_soc_dai {int active; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct bcm2835_i2s_dev {int fmt; int i2s_regmap; } ;


 int BCM2835_I2S_CS_A_REG ;
 int BCM2835_I2S_RXON ;
 int BCM2835_I2S_TXON ;
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;
 int SND_SOC_DAIFMT_CONT ;
 int bcm2835_i2s_stop_clock (struct bcm2835_i2s_dev*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void bcm2835_i2s_stop(struct bcm2835_i2s_dev *dev,
  struct snd_pcm_substream *substream,
  struct snd_soc_dai *dai)
{
 uint32_t mask;

 if (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
  mask = BCM2835_I2S_RXON;
 else
  mask = BCM2835_I2S_TXON;

 regmap_update_bits(dev->i2s_regmap,
   BCM2835_I2S_CS_A_REG, mask, 0);


 if (!dai->active && !(dev->fmt & SND_SOC_DAIFMT_CONT))
  bcm2835_i2s_stop_clock(dev);
}
