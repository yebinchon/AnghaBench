
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int stream; } ;
struct bcm2835_i2s_dev {int i2s_regmap; } ;


 int BCM2835_I2S_CS_A_REG ;
 int BCM2835_I2S_RXON ;
 int BCM2835_I2S_TXON ;
 int EINVAL ;
 int SNDRV_PCM_STREAM_CAPTURE ;






 int bcm2835_i2s_start_clock (struct bcm2835_i2s_dev*) ;
 int bcm2835_i2s_stop (struct bcm2835_i2s_dev*,struct snd_pcm_substream*,struct snd_soc_dai*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct bcm2835_i2s_dev* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int bcm2835_i2s_trigger(struct snd_pcm_substream *substream, int cmd,
          struct snd_soc_dai *dai)
{
 struct bcm2835_i2s_dev *dev = snd_soc_dai_get_drvdata(dai);
 uint32_t mask;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  bcm2835_i2s_start_clock(dev);

  if (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
   mask = BCM2835_I2S_RXON;
  else
   mask = BCM2835_I2S_TXON;

  regmap_update_bits(dev->i2s_regmap,
    BCM2835_I2S_CS_A_REG, mask, mask);
  break;

 case 129:
 case 128:
 case 133:
  bcm2835_i2s_stop(dev, substream, dai);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
