
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct ep93xx_i2s_info {int sclk; int lrclk; int mclk; } ;


 int EINVAL ;
 int EP93XX_I2S_RXWRDLEN ;
 int EP93XX_I2S_TXWRDLEN ;
 unsigned int EP93XX_I2S_WRDLEN_16 ;
 unsigned int EP93XX_I2S_WRDLEN_24 ;
 unsigned int EP93XX_I2S_WRDLEN_32 ;



 int SNDRV_PCM_STREAM_PLAYBACK ;
 unsigned int clk_get_rate (int ) ;
 int clk_set_rate (int ,unsigned int) ;
 int ep93xx_i2s_enable (struct ep93xx_i2s_info*,int ) ;
 int ep93xx_i2s_write_reg (struct ep93xx_i2s_info*,int ,unsigned int) ;
 int params_format (struct snd_pcm_hw_params*) ;
 unsigned int params_rate (struct snd_pcm_hw_params*) ;
 struct ep93xx_i2s_info* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int ep93xx_i2s_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params,
    struct snd_soc_dai *dai)
{
 struct ep93xx_i2s_info *info = snd_soc_dai_get_drvdata(dai);
 unsigned word_len, div, sdiv, lrdiv;
 int err;

 switch (params_format(params)) {
 case 130:
  word_len = EP93XX_I2S_WRDLEN_16;
  break;

 case 129:
  word_len = EP93XX_I2S_WRDLEN_24;
  break;

 case 128:
  word_len = EP93XX_I2S_WRDLEN_32;
  break;

 default:
  return -EINVAL;
 }

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  ep93xx_i2s_write_reg(info, EP93XX_I2S_TXWRDLEN, word_len);
 else
  ep93xx_i2s_write_reg(info, EP93XX_I2S_RXWRDLEN, word_len);
 div = clk_get_rate(info->mclk) / params_rate(params);
 sdiv = 4;
 if (div > (256 + 512) / 2) {
  lrdiv = 128;
 } else {
  lrdiv = 64;
  if (div < (128 + 256) / 2)
   sdiv = 2;
 }

 err = clk_set_rate(info->sclk, clk_get_rate(info->mclk) / sdiv);
 if (err)
  return err;

 err = clk_set_rate(info->lrclk, clk_get_rate(info->sclk) / lrdiv);
 if (err)
  return err;

 ep93xx_i2s_enable(info, substream->stream);
 return 0;
}
