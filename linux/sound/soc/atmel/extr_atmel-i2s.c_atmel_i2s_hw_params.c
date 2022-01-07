
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct atmel_i2s_dev {int fmt; int regmap; int dev; int * gck_param; } ;


 int ATMEL_I2SC_MR ;
 unsigned int ATMEL_I2SC_MR_DATALENGTH_16_BITS ;
 unsigned int ATMEL_I2SC_MR_DATALENGTH_18_BITS ;
 unsigned int ATMEL_I2SC_MR_DATALENGTH_20_BITS ;
 unsigned int ATMEL_I2SC_MR_DATALENGTH_24_BITS ;
 unsigned int ATMEL_I2SC_MR_DATALENGTH_32_BITS ;
 unsigned int ATMEL_I2SC_MR_DATALENGTH_8_BITS ;
 unsigned int ATMEL_I2SC_MR_FORMAT_I2S ;
 unsigned int ATMEL_I2SC_MR_IWS ;
 unsigned int ATMEL_I2SC_MR_MODE_MASTER ;
 unsigned int ATMEL_I2SC_MR_MODE_SLAVE ;
 unsigned int ATMEL_I2SC_MR_RXMONO ;
 unsigned int ATMEL_I2SC_MR_TXMONO ;
 int EINVAL ;







 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;


 int SND_SOC_DAIFMT_FORMAT_MASK ;

 int SND_SOC_DAIFMT_MASTER_MASK ;
 int atmel_i2s_get_gck_param (struct atmel_i2s_dev*,int ) ;
 int dev_err (int ,char*) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int regmap_write (int ,int ,unsigned int) ;
 struct atmel_i2s_dev* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int atmel_i2s_hw_params(struct snd_pcm_substream *substream,
          struct snd_pcm_hw_params *params,
          struct snd_soc_dai *dai)
{
 struct atmel_i2s_dev *dev = snd_soc_dai_get_drvdata(dai);
 bool is_playback = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK);
 unsigned int mr = 0;
 int ret;

 switch (dev->fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 128:
  mr |= ATMEL_I2SC_MR_FORMAT_I2S;
  break;

 default:
  dev_err(dev->dev, "unsupported bus format\n");
  return -EINVAL;
 }

 switch (dev->fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 129:

  mr |= ATMEL_I2SC_MR_MODE_MASTER;
  ret = atmel_i2s_get_gck_param(dev, params_rate(params));
  if (ret)
   return ret;
  break;

 case 130:

  mr |= ATMEL_I2SC_MR_MODE_SLAVE;
  dev->gck_param = ((void*)0);
  break;

 default:
  dev_err(dev->dev, "unsupported master/slave mode\n");
  return -EINVAL;
 }

 switch (params_channels(params)) {
 case 1:
  if (is_playback)
   mr |= ATMEL_I2SC_MR_TXMONO;
  else
   mr |= ATMEL_I2SC_MR_RXMONO;
  break;
 case 2:
  break;
 default:
  dev_err(dev->dev, "unsupported number of audio channels\n");
  return -EINVAL;
 }

 switch (params_format(params)) {
 case 131:
  mr |= ATMEL_I2SC_MR_DATALENGTH_8_BITS;
  break;

 case 137:
  mr |= ATMEL_I2SC_MR_DATALENGTH_16_BITS;
  break;

 case 136:
  mr |= ATMEL_I2SC_MR_DATALENGTH_18_BITS | ATMEL_I2SC_MR_IWS;
  break;

 case 135:
  mr |= ATMEL_I2SC_MR_DATALENGTH_20_BITS | ATMEL_I2SC_MR_IWS;
  break;

 case 134:
  mr |= ATMEL_I2SC_MR_DATALENGTH_24_BITS | ATMEL_I2SC_MR_IWS;
  break;

 case 133:
  mr |= ATMEL_I2SC_MR_DATALENGTH_24_BITS;
  break;

 case 132:
  mr |= ATMEL_I2SC_MR_DATALENGTH_32_BITS;
  break;

 default:
  dev_err(dev->dev, "unsupported size/endianness for audio samples\n");
  return -EINVAL;
 }

 return regmap_write(dev->regmap, ATMEL_I2SC_MR, mr);
}
