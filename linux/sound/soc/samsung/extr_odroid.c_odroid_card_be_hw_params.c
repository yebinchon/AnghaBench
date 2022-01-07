
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int num_codecs; struct snd_soc_dai** codec_dais; int card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct odroid_priv {unsigned int be_sample_rate; int lock; int sclk_i2s; int clk_i2s_bus; } ;


 int EINVAL ;
 int SND_SOC_CLOCK_IN ;
 int clk_set_rate (int ,unsigned int) ;
 unsigned int params_rate (struct snd_pcm_hw_params*) ;
 struct odroid_priv* snd_soc_card_get_drvdata (int ) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int odroid_card_be_hw_params(struct snd_pcm_substream *substream,
          struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct odroid_priv *priv = snd_soc_card_get_drvdata(rtd->card);
 unsigned int pll_freq, rclk_freq, rfs;
 unsigned long flags;
 int ret;

 switch (params_rate(params)) {
 case 64000:
  pll_freq = 196608001U;
  rfs = 384;
  break;
 case 44100:
 case 88200:
  pll_freq = 180633609U;
  rfs = 512;
  break;
 case 32000:
 case 48000:
 case 96000:
  pll_freq = 196608001U;
  rfs = 512;
  break;
 default:
  return -EINVAL;
 }

 ret = clk_set_rate(priv->clk_i2s_bus, pll_freq / 2 + 1);
 if (ret < 0)
  return ret;






 rclk_freq = params_rate(params) * rfs + 2;

 ret = clk_set_rate(priv->sclk_i2s, rclk_freq);
 if (ret < 0)
  return ret;

 if (rtd->num_codecs > 1) {
  struct snd_soc_dai *codec_dai = rtd->codec_dais[1];

  ret = snd_soc_dai_set_sysclk(codec_dai, 0, rclk_freq,
          SND_SOC_CLOCK_IN);
  if (ret < 0)
   return ret;
 }

 spin_lock_irqsave(&priv->lock, flags);
 priv->be_sample_rate = params_rate(params);
 spin_unlock_irqrestore(&priv->lock, flags);

 return 0;
}
