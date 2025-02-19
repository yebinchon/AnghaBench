
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct atmel_i2s_dev {int regmap; int dev; } ;


 int ATMEL_I2SC_RHR ;
 int ATMEL_I2SC_SR ;
 unsigned int ATMEL_I2SC_SR_RXRDY ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int dev_dbg (int ,char*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct atmel_i2s_dev* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int atmel_i2s_prepare(struct snd_pcm_substream *substream,
        struct snd_soc_dai *dai)
{
 struct atmel_i2s_dev *dev = snd_soc_dai_get_drvdata(dai);
 bool is_playback = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK);
 unsigned int rhr, sr = 0;

 if (is_playback) {
  regmap_read(dev->regmap, ATMEL_I2SC_SR, &sr);
  if (sr & ATMEL_I2SC_SR_RXRDY) {





   dev_dbg(dev->dev, "RXRDY is set\n");
   regmap_read(dev->regmap, ATMEL_I2SC_RHR, &rhr);
  }
 }

 return 0;
}
