
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_dmaengine_dai_dma_data {int dummy; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 struct snd_dmaengine_dai_dma_data pxa2xx_ac97_pcm_aux_mono_in ;
 struct snd_dmaengine_dai_dma_data pxa2xx_ac97_pcm_aux_mono_out ;
 int snd_soc_dai_set_dma_data (struct snd_soc_dai*,struct snd_pcm_substream*,struct snd_dmaengine_dai_dma_data*) ;

__attribute__((used)) static int pxa2xx_ac97_aux_startup(struct snd_pcm_substream *substream,
       struct snd_soc_dai *cpu_dai)
{
 struct snd_dmaengine_dai_dma_data *dma_data;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  dma_data = &pxa2xx_ac97_pcm_aux_mono_out;
 else
  dma_data = &pxa2xx_ac97_pcm_aux_mono_in;

 snd_soc_dai_set_dma_data(cpu_dai, substream, dma_data);

 return 0;
}
