
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xlnx_pcm_stream_param {int mmio; } ;
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {int stream; struct snd_soc_pcm_runtime* private_data; TYPE_1__* runtime; } ;
struct TYPE_2__ {struct xlnx_pcm_stream_param* private_data; } ;


 int DRV_NAME ;
 int dev_err (int ,char*) ;
 int kfree (struct xlnx_pcm_stream_param*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 int xlnx_formatter_disable_irqs (int ,int ) ;
 int xlnx_formatter_pcm_reset (int ) ;

__attribute__((used)) static int xlnx_formatter_pcm_close(struct snd_pcm_substream *substream)
{
 int ret;
 struct xlnx_pcm_stream_param *stream_data =
   substream->runtime->private_data;
 struct snd_soc_pcm_runtime *prtd = substream->private_data;
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(prtd,
            DRV_NAME);

 ret = xlnx_formatter_pcm_reset(stream_data->mmio);
 if (ret) {
  dev_err(component->dev, "audio formatter reset failed\n");
  goto err_reset;
 }
 xlnx_formatter_disable_irqs(stream_data->mmio, substream->stream);

err_reset:
 kfree(stream_data);
 return 0;
}
