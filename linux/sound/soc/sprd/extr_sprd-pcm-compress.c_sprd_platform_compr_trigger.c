
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sprd_compr_stream {int num_channels; int received_total; TYPE_1__* compr_ops; struct sprd_compr_dma* dma; int received_stage1; int received_stage0; int stage1_pointer; int copied_total; } ;
struct sprd_compr_dma {int chan; int cookie; int desc; } ;
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {struct device* dev; } ;
struct snd_compr_stream {int direction; struct snd_soc_pcm_runtime* private_data; struct snd_compr_runtime* runtime; } ;
struct snd_compr_runtime {struct sprd_compr_stream* private_data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* start ) (int) ;int (* stop ) (int) ;int (* pause ) (int) ;int (* pause_release ) (int) ;int (* drain ) (int ) ;} ;


 int DRV_NAME ;
 int EINVAL ;






 int SND_COMPRESS_PLAYBACK ;


 int dev_err (struct device*,char*,...) ;
 int dma_async_issue_pending (int ) ;
 int dma_submit_error (int ) ;
 int dmaengine_pause (int ) ;
 int dmaengine_resume (int ) ;
 int dmaengine_submit (int ) ;
 int dmaengine_terminate_async (int ) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 int stub1 (int) ;
 int stub2 (int) ;
 int stub3 (int) ;
 int stub4 (int) ;
 int stub5 (int ) ;

__attribute__((used)) static int sprd_platform_compr_trigger(struct snd_compr_stream *cstream,
           int cmd)
{
 struct snd_compr_runtime *runtime = cstream->runtime;
 struct sprd_compr_stream *stream = runtime->private_data;
 struct snd_soc_pcm_runtime *rtd = cstream->private_data;
 struct snd_soc_component *component =
  snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct device *dev = component->dev;
 int channels = stream->num_channels, ret = 0, i;
 int stream_id = cstream->direction;

 if (cstream->direction != SND_COMPRESS_PLAYBACK) {
  dev_err(dev, "unsupported compress direction\n");
  return -EINVAL;
 }

 switch (cmd) {
 case 132:
  for (i = channels - 1; i >= 0; i--) {
   struct sprd_compr_dma *dma = &stream->dma[i];

   if (!dma->desc)
    continue;

   dma->cookie = dmaengine_submit(dma->desc);
   ret = dma_submit_error(dma->cookie);
   if (ret) {
    dev_err(dev, "failed to submit request: %d\n",
     ret);
    return ret;
   }
  }

  for (i = channels - 1; i >= 0; i--) {
   struct sprd_compr_dma *dma = &stream->dma[i];

   if (dma->chan)
    dma_async_issue_pending(dma->chan);
  }

  ret = stream->compr_ops->start(stream_id);
  break;

 case 131:
  for (i = channels - 1; i >= 0; i--) {
   struct sprd_compr_dma *dma = &stream->dma[i];

   if (dma->chan)
    dmaengine_terminate_async(dma->chan);
  }

  stream->copied_total = 0;
  stream->stage1_pointer = 0;
  stream->received_total = 0;
  stream->received_stage0 = 0;
  stream->received_stage1 = 0;

  ret = stream->compr_ops->stop(stream_id);
  break;

 case 130:
 case 135:
  for (i = channels - 1; i >= 0; i--) {
   struct sprd_compr_dma *dma = &stream->dma[i];

   if (dma->chan)
    dmaengine_pause(dma->chan);
  }

  ret = stream->compr_ops->pause(stream_id);
  break;

 case 133:
 case 134:
  for (i = channels - 1; i >= 0; i--) {
   struct sprd_compr_dma *dma = &stream->dma[i];

   if (dma->chan)
    dmaengine_resume(dma->chan);
  }

  ret = stream->compr_ops->pause_release(stream_id);
  break;

 case 128:
 case 129:
  ret = stream->compr_ops->drain(stream->received_total);
  break;

 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
