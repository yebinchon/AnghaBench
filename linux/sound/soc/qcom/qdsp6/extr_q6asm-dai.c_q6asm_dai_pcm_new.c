
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_pcm* pcm; } ;
struct snd_soc_component {struct device* dev; } ;
struct snd_pcm_substream {int dma_buffer; } ;
struct snd_pcm {TYPE_1__* streams; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int buffer_bytes_max; } ;
struct TYPE_3__ {struct snd_pcm_substream* substream; } ;


 int DRV_NAME ;
 int SNDRV_DMA_TYPE_DEV ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int dev_err (struct device*,char*) ;
 TYPE_2__ q6asm_dai_hardware_playback ;
 int snd_dma_alloc_pages (int ,struct device*,int,int *) ;
 int snd_dma_free_pages (int *) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;

__attribute__((used)) static int q6asm_dai_pcm_new(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_pcm_substream *psubstream, *csubstream;
 struct snd_soc_component *c = snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct snd_pcm *pcm = rtd->pcm;
 struct device *dev;
 int size, ret;

 dev = c->dev;
 size = q6asm_dai_hardware_playback.buffer_bytes_max;
 psubstream = pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream;
 if (psubstream) {
  ret = snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV, dev, size,
       &psubstream->dma_buffer);
  if (ret) {
   dev_err(dev, "Cannot allocate buffer(s)\n");
   return ret;
  }
 }

 csubstream = pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream;
 if (csubstream) {
  ret = snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV, dev, size,
       &csubstream->dma_buffer);
  if (ret) {
   dev_err(dev, "Cannot allocate buffer(s)\n");
   if (psubstream)
    snd_dma_free_pages(&psubstream->dma_buffer);
   return ret;
  }
 }

 return 0;
}
