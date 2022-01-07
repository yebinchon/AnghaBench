
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int info; } ;
struct dmaengine_pcm_runtime_data {int dma_chan; } ;


 int EINVAL ;
 int SNDRV_PCM_INFO_PAUSE ;






 int dma_async_issue_pending (int ) ;
 int dmaengine_pause (int ) ;
 int dmaengine_pcm_prepare_and_submit (struct snd_pcm_substream*) ;
 int dmaengine_resume (int ) ;
 int dmaengine_terminate_async (int ) ;
 struct dmaengine_pcm_runtime_data* substream_to_prtd (struct snd_pcm_substream*) ;

int snd_dmaengine_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct dmaengine_pcm_runtime_data *prtd = substream_to_prtd(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 int ret;

 switch (cmd) {
 case 130:
  ret = dmaengine_pcm_prepare_and_submit(substream);
  if (ret)
   return ret;
  dma_async_issue_pending(prtd->dma_chan);
  break;
 case 131:
 case 132:
  dmaengine_resume(prtd->dma_chan);
  break;
 case 128:
  if (runtime->info & SNDRV_PCM_INFO_PAUSE)
   dmaengine_pause(prtd->dma_chan);
  else
   dmaengine_terminate_async(prtd->dma_chan);
  break;
 case 133:
  dmaengine_pause(prtd->dma_chan);
  break;
 case 129:
  dmaengine_terminate_async(prtd->dma_chan);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
