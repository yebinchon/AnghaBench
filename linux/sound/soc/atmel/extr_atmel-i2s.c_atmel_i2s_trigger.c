
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct atmel_i2s_dev {int regmap; } ;


 int ATMEL_I2SC_CR ;
 unsigned int ATMEL_I2SC_CR_RXDIS ;
 unsigned int ATMEL_I2SC_CR_RXEN ;
 unsigned int ATMEL_I2SC_CR_TXDIS ;
 unsigned int ATMEL_I2SC_CR_TXEN ;
 int ATMEL_I2SC_MR ;
 unsigned int ATMEL_I2SC_MR_MODE_MASK ;
 unsigned int ATMEL_I2SC_MR_MODE_MASTER ;
 int EINVAL ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;






 int atmel_i2s_switch_mck_generator (struct atmel_i2s_dev*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;
 struct atmel_i2s_dev* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int atmel_i2s_trigger(struct snd_pcm_substream *substream, int cmd,
        struct snd_soc_dai *dai)
{
 struct atmel_i2s_dev *dev = snd_soc_dai_get_drvdata(dai);
 bool is_playback = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK);
 bool is_master, mck_enabled;
 unsigned int cr, mr;
 int err;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  cr = is_playback ? ATMEL_I2SC_CR_TXEN : ATMEL_I2SC_CR_RXEN;
  mck_enabled = 1;
  break;
 case 129:
 case 128:
 case 133:
  cr = is_playback ? ATMEL_I2SC_CR_TXDIS : ATMEL_I2SC_CR_RXDIS;
  mck_enabled = 0;
  break;
 default:
  return -EINVAL;
 }


 err = regmap_read(dev->regmap, ATMEL_I2SC_MR, &mr);
 if (err)
  return err;
 is_master = (mr & ATMEL_I2SC_MR_MODE_MASK) == ATMEL_I2SC_MR_MODE_MASTER;


 if (is_master && mck_enabled)
  err = atmel_i2s_switch_mck_generator(dev, 1);
 if (err)
  return err;

 err = regmap_write(dev->regmap, ATMEL_I2SC_CR, cr);
 if (err)
  return err;


 if (is_master && !mck_enabled)
  err = atmel_i2s_switch_mck_generator(dev, 0);

 return err;
}
