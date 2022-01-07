
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct cygnus_aio_port {int dummy; } ;


 struct cygnus_aio_port* snd_soc_dai_get_dma_data (int ,struct snd_pcm_substream*) ;

__attribute__((used)) static struct cygnus_aio_port *cygnus_dai_get_dma_data(
    struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *soc_runtime = substream->private_data;

 return snd_soc_dai_get_dma_data(soc_runtime->cpu_dai, substream);
}
