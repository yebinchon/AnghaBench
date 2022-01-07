
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_adfsdm_priv {int * substream; } ;
struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;


 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct stm32_adfsdm_priv* snd_soc_dai_get_drvdata (int ) ;

__attribute__((used)) static int stm32_adfsdm_pcm_close(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct stm32_adfsdm_priv *priv =
  snd_soc_dai_get_drvdata(rtd->cpu_dai);

 snd_pcm_lib_free_pages(substream);
 priv->substream = ((void*)0);

 return 0;
}
