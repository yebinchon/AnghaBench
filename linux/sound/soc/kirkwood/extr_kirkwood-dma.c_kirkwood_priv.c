
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct kirkwood_dma_data {int dummy; } ;


 struct kirkwood_dma_data* snd_soc_dai_get_drvdata (int ) ;

__attribute__((used)) static struct kirkwood_dma_data *kirkwood_priv(struct snd_pcm_substream *subs)
{
 struct snd_soc_pcm_runtime *soc_runtime = subs->private_data;
 return snd_soc_dai_get_drvdata(soc_runtime->cpu_dai);
}
