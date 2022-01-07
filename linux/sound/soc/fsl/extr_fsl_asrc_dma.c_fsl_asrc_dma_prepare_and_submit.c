
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {struct device* dev; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_runtime {int dma_addr; int no_period_wakeup; struct fsl_asrc_pair* private_data; } ;
struct fsl_asrc_pair {TYPE_1__** desc; int * dma_chan; scalar_t__ pos; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct snd_pcm_substream* callback_param; int callback; } ;


 unsigned long DMA_CTRL_ACK ;
 int DMA_DEV_TO_DEV ;
 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 unsigned long DMA_PREP_INTERRUPT ;
 int DRV_NAME ;
 int ENOMEM ;
 size_t IN ;
 size_t OUT ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int dev_err (struct device*,char*) ;
 void* dmaengine_prep_dma_cyclic (int ,int,int,int,int ,unsigned long) ;
 int dmaengine_submit (TYPE_1__*) ;
 int fsl_asrc_dma_complete ;
 int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;

__attribute__((used)) static int fsl_asrc_dma_prepare_and_submit(struct snd_pcm_substream *substream)
{
 u8 dir = substream->stream == SNDRV_PCM_STREAM_PLAYBACK ? OUT : IN;
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct fsl_asrc_pair *pair = runtime->private_data;
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct device *dev = component->dev;
 unsigned long flags = DMA_CTRL_ACK;


 if (!substream->runtime->no_period_wakeup)
  flags |= DMA_PREP_INTERRUPT;

 pair->pos = 0;
 pair->desc[!dir] = dmaengine_prep_dma_cyclic(
   pair->dma_chan[!dir], runtime->dma_addr,
   snd_pcm_lib_buffer_bytes(substream),
   snd_pcm_lib_period_bytes(substream),
   dir == OUT ? DMA_MEM_TO_DEV : DMA_DEV_TO_MEM, flags);
 if (!pair->desc[!dir]) {
  dev_err(dev, "failed to prepare slave DMA for Front-End\n");
  return -ENOMEM;
 }

 pair->desc[!dir]->callback = fsl_asrc_dma_complete;
 pair->desc[!dir]->callback_param = substream;

 dmaengine_submit(pair->desc[!dir]);


 pair->desc[dir] = dmaengine_prep_dma_cyclic(
   pair->dma_chan[dir], 0xffff, 64, 64, DMA_DEV_TO_DEV, 0);
 if (!pair->desc[dir]) {
  dev_err(dev, "failed to prepare slave DMA for Back-End\n");
  return -ENOMEM;
 }

 dmaengine_submit(pair->desc[dir]);

 return 0;
}
