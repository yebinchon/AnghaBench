
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_pcm* pcm; TYPE_1__* card; } ;
struct snd_pcm_substream {int dma_buffer; } ;
struct snd_pcm {TYPE_3__* streams; TYPE_2__* card; } ;
struct snd_card {int dev; } ;
struct TYPE_6__ {struct snd_pcm_substream* substream; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {struct snd_card* snd_card; } ;


 int DMA_BIT_MASK (int) ;
 int FSL_ASRC_DMABUF_SIZE ;
 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_STREAM_LAST ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int dev_err (int ,char*) ;
 int dma_coerce_mask_and_coherent (int ,int ) ;
 int snd_dma_alloc_pages (int ,int ,int ,int *) ;
 int snd_dma_free_pages (int *) ;

__attribute__((used)) static int fsl_asrc_dma_pcm_new(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_card *card = rtd->card->snd_card;
 struct snd_pcm_substream *substream;
 struct snd_pcm *pcm = rtd->pcm;
 int ret, i;

 ret = dma_coerce_mask_and_coherent(card->dev, DMA_BIT_MASK(32));
 if (ret) {
  dev_err(card->dev, "failed to set DMA mask\n");
  return ret;
 }

 for (i = SNDRV_PCM_STREAM_PLAYBACK; i <= SNDRV_PCM_STREAM_LAST; i++) {
  substream = pcm->streams[i].substream;
  if (!substream)
   continue;

  ret = snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV, pcm->card->dev,
    FSL_ASRC_DMABUF_SIZE, &substream->dma_buffer);
  if (ret) {
   dev_err(card->dev, "failed to allocate DMA buffer\n");
   goto err;
  }
 }

 return 0;

err:
 if (--i == 0 && pcm->streams[i].substream)
  snd_dma_free_pages(&pcm->streams[i].substream->dma_buffer);

 return ret;
}
