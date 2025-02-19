
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int dev; struct snd_pcm* pcm; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {int dma_buffer; } ;
struct snd_pcm {TYPE_1__* streams; } ;
struct TYPE_4__ {size_t buffer_bytes_max; } ;
struct TYPE_3__ {struct snd_pcm_substream* substream; } ;


 int DRV_NAME ;
 int EINVAL ;
 int SNDRV_DMA_TYPE_DEV ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int dev_err (int ,char*) ;
 TYPE_2__ lpass_platform_pcm_hardware ;
 int snd_dma_alloc_pages (int ,int ,size_t,int *) ;
 int snd_dma_free_pages (int *) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;

__attribute__((used)) static int lpass_platform_pcm_new(struct snd_soc_pcm_runtime *soc_runtime)
{
 struct snd_pcm *pcm = soc_runtime->pcm;
 struct snd_pcm_substream *psubstream, *csubstream;
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(soc_runtime, DRV_NAME);
 int ret = -EINVAL;
 size_t size = lpass_platform_pcm_hardware.buffer_bytes_max;

 psubstream = pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream;
 if (psubstream) {
  ret = snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV,
     component->dev,
     size, &psubstream->dma_buffer);
  if (ret) {
   dev_err(soc_runtime->dev, "Cannot allocate buffer(s)\n");
   return ret;
  }
 }

 csubstream = pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream;
 if (csubstream) {
  ret = snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV,
     component->dev,
     size, &csubstream->dma_buffer);
  if (ret) {
   dev_err(soc_runtime->dev, "Cannot allocate buffer(s)\n");
   if (psubstream)
    snd_dma_free_pages(&psubstream->dma_buffer);
   return ret;
  }

 }

 return 0;
}
