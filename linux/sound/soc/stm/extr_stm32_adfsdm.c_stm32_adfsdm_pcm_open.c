
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_adfsdm_priv {struct snd_pcm_substream* substream; } ;
struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;


 struct stm32_adfsdm_priv* snd_soc_dai_get_drvdata (int ) ;
 int snd_soc_set_runtime_hwparams (struct snd_pcm_substream*,int *) ;
 int stm32_adfsdm_pcm_hw ;

__attribute__((used)) static int stm32_adfsdm_pcm_open(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct stm32_adfsdm_priv *priv = snd_soc_dai_get_drvdata(rtd->cpu_dai);
 int ret;

 ret = snd_soc_set_runtime_hwparams(substream, &stm32_adfsdm_pcm_hw);
 if (!ret)
  priv->substream = substream;

 return ret;
}
