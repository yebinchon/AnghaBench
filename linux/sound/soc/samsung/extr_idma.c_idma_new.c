
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_pcm* pcm; TYPE_1__* card; } ;
struct snd_pcm {TYPE_2__* streams; } ;
struct snd_card {int dev; } ;
struct TYPE_4__ {scalar_t__ substream; } ;
struct TYPE_3__ {struct snd_card* snd_card; } ;


 int DMA_BIT_MASK (int) ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int dma_coerce_mask_and_coherent (int ,int ) ;
 int preallocate_idma_buffer (struct snd_pcm*,size_t) ;

__attribute__((used)) static int idma_new(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_card *card = rtd->card->snd_card;
 struct snd_pcm *pcm = rtd->pcm;
 int ret;

 ret = dma_coerce_mask_and_coherent(card->dev, DMA_BIT_MASK(32));
 if (ret)
  return ret;

 if (pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream) {
  ret = preallocate_idma_buffer(pcm,
    SNDRV_PCM_STREAM_PLAYBACK);
 }

 return ret;
}
