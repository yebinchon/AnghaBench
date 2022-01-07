
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sprd_pcm_dma_private {int hw_chan; struct sprd_pcm_dma_data* data; } ;
struct sprd_pcm_dma_data {int chan; int cookie; int desc; } ;
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; TYPE_1__* runtime; } ;
struct TYPE_2__ {struct sprd_pcm_dma_private* private_data; } ;


 int DRV_NAME ;
 int EINVAL ;






 int dev_err (int ,char*,int) ;
 int dma_async_issue_pending (int ) ;
 int dma_submit_error (int ) ;
 int dmaengine_pause (int ) ;
 int dmaengine_resume (int ) ;
 int dmaengine_submit (int ) ;
 int dmaengine_terminate_async (int ) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;

__attribute__((used)) static int sprd_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct sprd_pcm_dma_private *dma_private =
  substream->runtime->private_data;
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_component *component =
  snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 int ret = 0, i;

 switch (cmd) {
 case 130:
  for (i = 0; i < dma_private->hw_chan; i++) {
   struct sprd_pcm_dma_data *data = &dma_private->data[i];

   if (!data->desc)
    continue;

   data->cookie = dmaengine_submit(data->desc);
   ret = dma_submit_error(data->cookie);
   if (ret) {
    dev_err(component->dev,
     "failed to submit dma request: %d\n",
     ret);
    return ret;
   }

   dma_async_issue_pending(data->chan);
  }

  break;
 case 131:
 case 132:
  for (i = 0; i < dma_private->hw_chan; i++) {
   struct sprd_pcm_dma_data *data = &dma_private->data[i];

   if (data->chan)
    dmaengine_resume(data->chan);
  }

  break;
 case 129:
  for (i = 0; i < dma_private->hw_chan; i++) {
   struct sprd_pcm_dma_data *data = &dma_private->data[i];

   if (data->chan)
    dmaengine_terminate_async(data->chan);
  }

  break;
 case 128:
 case 133:
  for (i = 0; i < dma_private->hw_chan; i++) {
   struct sprd_pcm_dma_data *data = &dma_private->data[i];

   if (data->chan)
    dmaengine_pause(data->chan);
  }

  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
