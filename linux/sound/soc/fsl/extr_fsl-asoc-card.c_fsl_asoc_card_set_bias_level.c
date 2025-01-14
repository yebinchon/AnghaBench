
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dapm_context {scalar_t__ dev; int bias_level; } ;
struct snd_soc_dai {scalar_t__ dev; } ;
struct snd_soc_card {TYPE_1__* dai_link; struct device* dev; } ;
struct codec_priv {unsigned int mclk_freq; int pll_id; int mclk_id; int fll_id; } ;
struct fsl_asoc_card_priv {int sample_rate; int sample_format; struct codec_priv codec_priv; } ;
struct device {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;
struct TYPE_2__ {int name; } ;


 int ENOTSUPP ;
 int SNDRV_PCM_FORMAT_S24_LE ;


 int SND_SOC_CLOCK_IN ;
 int dev_err (struct device*,char*,int) ;
 struct fsl_asoc_card_priv* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 int snd_soc_dai_set_pll (struct snd_soc_dai*,int ,int ,unsigned int,unsigned int) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,unsigned int,int ) ;
 struct snd_soc_pcm_runtime* snd_soc_get_pcm_runtime (struct snd_soc_card*,int ) ;

__attribute__((used)) static int fsl_asoc_card_set_bias_level(struct snd_soc_card *card,
     struct snd_soc_dapm_context *dapm,
     enum snd_soc_bias_level level)
{
 struct fsl_asoc_card_priv *priv = snd_soc_card_get_drvdata(card);
 struct snd_soc_pcm_runtime *rtd;
 struct snd_soc_dai *codec_dai;
 struct codec_priv *codec_priv = &priv->codec_priv;
 struct device *dev = card->dev;
 unsigned int pll_out;
 int ret;

 rtd = snd_soc_get_pcm_runtime(card, card->dai_link[0].name);
 codec_dai = rtd->codec_dai;
 if (dapm->dev != codec_dai->dev)
  return 0;

 switch (level) {
 case 129:
  if (dapm->bias_level != 128)
   break;

  if (priv->sample_format == SNDRV_PCM_FORMAT_S24_LE)
   pll_out = priv->sample_rate * 384;
  else
   pll_out = priv->sample_rate * 256;

  ret = snd_soc_dai_set_pll(codec_dai, codec_priv->pll_id,
       codec_priv->mclk_id,
       codec_priv->mclk_freq, pll_out);
  if (ret) {
   dev_err(dev, "failed to start FLL: %d\n", ret);
   return ret;
  }

  ret = snd_soc_dai_set_sysclk(codec_dai, codec_priv->fll_id,
          pll_out, SND_SOC_CLOCK_IN);
  if (ret && ret != -ENOTSUPP) {
   dev_err(dev, "failed to set SYSCLK: %d\n", ret);
   return ret;
  }
  break;

 case 128:
  if (dapm->bias_level != 129)
   break;

  ret = snd_soc_dai_set_sysclk(codec_dai, codec_priv->mclk_id,
          codec_priv->mclk_freq,
          SND_SOC_CLOCK_IN);
  if (ret && ret != -ENOTSUPP) {
   dev_err(dev, "failed to switch away from FLL: %d\n", ret);
   return ret;
  }

  ret = snd_soc_dai_set_pll(codec_dai, codec_priv->pll_id, 0, 0, 0);
  if (ret) {
   dev_err(dev, "failed to stop FLL: %d\n", ret);
   return ret;
  }
  break;

 default:
  break;
 }

 return 0;
}
