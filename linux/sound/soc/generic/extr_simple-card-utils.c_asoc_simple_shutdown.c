
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int num; int card; struct snd_soc_dai* cpu_dai; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct simple_dai_props {int codec_dai; int cpu_dai; scalar_t__ mclk_fs; } ;
struct asoc_simple_priv {int dummy; } ;


 int SND_SOC_CLOCK_IN ;
 int SND_SOC_CLOCK_OUT ;
 int asoc_simple_clk_disable (int ) ;
 struct simple_dai_props* simple_priv_to_props (struct asoc_simple_priv*,int ) ;
 struct asoc_simple_priv* snd_soc_card_get_drvdata (int ) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int ,int ) ;

void asoc_simple_shutdown(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
 struct asoc_simple_priv *priv = snd_soc_card_get_drvdata(rtd->card);
 struct simple_dai_props *dai_props =
  simple_priv_to_props(priv, rtd->num);

 if (dai_props->mclk_fs) {
  snd_soc_dai_set_sysclk(codec_dai, 0, 0, SND_SOC_CLOCK_IN);
  snd_soc_dai_set_sysclk(cpu_dai, 0, 0, SND_SOC_CLOCK_OUT);
 }

 asoc_simple_clk_disable(dai_props->cpu_dai);

 asoc_simple_clk_disable(dai_props->codec_dai);
}
