
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int num; int card; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct simple_dai_props {int cpu_dai; int codec_dai; } ;
struct asoc_simple_priv {int dummy; } ;


 int asoc_simple_clk_disable (int ) ;
 int asoc_simple_clk_enable (int ) ;
 struct simple_dai_props* simple_priv_to_props (struct asoc_simple_priv*,int ) ;
 struct asoc_simple_priv* snd_soc_card_get_drvdata (int ) ;

int asoc_simple_startup(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct asoc_simple_priv *priv = snd_soc_card_get_drvdata(rtd->card);
 struct simple_dai_props *dai_props = simple_priv_to_props(priv, rtd->num);
 int ret;

 ret = asoc_simple_clk_enable(dai_props->cpu_dai);
 if (ret)
  return ret;

 ret = asoc_simple_clk_enable(dai_props->codec_dai);
 if (ret)
  asoc_simple_clk_disable(dai_props->cpu_dai);

 return ret;
}
