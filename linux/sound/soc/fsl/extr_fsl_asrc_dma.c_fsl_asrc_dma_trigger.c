
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct fsl_asrc_pair* private_data; } ;
struct fsl_asrc_pair {int * dma_chan; } ;


 int EINVAL ;
 size_t IN ;
 size_t OUT ;






 int dma_async_issue_pending (int ) ;
 int dmaengine_terminate_all (int ) ;
 int fsl_asrc_dma_prepare_and_submit (struct snd_pcm_substream*) ;

__attribute__((used)) static int fsl_asrc_dma_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct fsl_asrc_pair *pair = runtime->private_data;
 int ret;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  ret = fsl_asrc_dma_prepare_and_submit(substream);
  if (ret)
   return ret;
  dma_async_issue_pending(pair->dma_chan[IN]);
  dma_async_issue_pending(pair->dma_chan[OUT]);
  break;
 case 129:
 case 128:
 case 133:
  dmaengine_terminate_all(pair->dma_chan[OUT]);
  dmaengine_terminate_all(pair->dma_chan[IN]);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
