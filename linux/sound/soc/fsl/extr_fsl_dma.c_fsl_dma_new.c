
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_pcm* pcm; TYPE_1__* card; } ;
struct snd_pcm {TYPE_3__* streams; } ;
struct snd_card {int dev; } ;
struct TYPE_8__ {int buffer_bytes_max; } ;
struct TYPE_7__ {TYPE_2__* substream; } ;
struct TYPE_6__ {int dma_buffer; } ;
struct TYPE_5__ {struct snd_card* snd_card; } ;


 int DMA_BIT_MASK (int) ;
 int SNDRV_DMA_TYPE_DEV ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int dev_err (int ,char*) ;
 int dma_coerce_mask_and_coherent (int ,int ) ;
 TYPE_4__ fsl_dma_hardware ;
 int snd_dma_alloc_pages (int ,int ,int ,int *) ;
 int snd_dma_free_pages (int *) ;

__attribute__((used)) static int fsl_dma_new(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_card *card = rtd->card->snd_card;
 struct snd_pcm *pcm = rtd->pcm;
 int ret;

 ret = dma_coerce_mask_and_coherent(card->dev, DMA_BIT_MASK(36));
 if (ret)
  return ret;





 if (pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream) {
  ret = snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV, card->dev,
   fsl_dma_hardware.buffer_bytes_max,
   &pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream->dma_buffer);
  if (ret) {
   dev_err(card->dev, "can't alloc playback dma buffer\n");
   return ret;
  }
 }

 if (pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream) {
  ret = snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV, card->dev,
   fsl_dma_hardware.buffer_bytes_max,
   &pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream->dma_buffer);
  if (ret) {
   dev_err(card->dev, "can't alloc capture dma buffer\n");
   snd_dma_free_pages(&pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream->dma_buffer);
   return ret;
  }
 }

 return 0;
}
