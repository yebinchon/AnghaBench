
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int num; int card; struct snd_soc_dai* cpu_dai; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct simple_dai_props {int mclk_fs; int cpu_dai; int codec_dai; } ;
struct asoc_simple_priv {int dummy; } ;


 int ENOTSUPP ;
 int SND_SOC_CLOCK_IN ;
 int SND_SOC_CLOCK_OUT ;
 int asoc_simple_set_clk_rate (int ,unsigned int) ;
 unsigned int params_rate (struct snd_pcm_hw_params*) ;
 struct simple_dai_props* simple_priv_to_props (struct asoc_simple_priv*,int ) ;
 struct asoc_simple_priv* snd_soc_card_get_drvdata (int ) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,unsigned int,int ) ;

int asoc_simple_hw_params(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
 struct asoc_simple_priv *priv = snd_soc_card_get_drvdata(rtd->card);
 struct simple_dai_props *dai_props =
  simple_priv_to_props(priv, rtd->num);
 unsigned int mclk, mclk_fs = 0;
 int ret = 0;

 if (dai_props->mclk_fs)
  mclk_fs = dai_props->mclk_fs;

 if (mclk_fs) {
  mclk = params_rate(params) * mclk_fs;

  ret = asoc_simple_set_clk_rate(dai_props->codec_dai, mclk);
  if (ret < 0)
   return ret;

  ret = asoc_simple_set_clk_rate(dai_props->cpu_dai, mclk);
  if (ret < 0)
   return ret;

  ret = snd_soc_dai_set_sysclk(codec_dai, 0, mclk,
          SND_SOC_CLOCK_IN);
  if (ret && ret != -ENOTSUPP)
   goto err;

  ret = snd_soc_dai_set_sysclk(cpu_dai, 0, mclk,
          SND_SOC_CLOCK_OUT);
  if (ret && ret != -ENOTSUPP)
   goto err;
 }
 return 0;
err:
 return ret;
}
