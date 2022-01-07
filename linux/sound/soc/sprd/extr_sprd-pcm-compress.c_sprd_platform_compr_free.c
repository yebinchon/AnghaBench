
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sprd_compr_stream {int num_channels; TYPE_1__* compr_ops; int iram_buffer; int compr_buffer; struct sprd_compr_dma* dma; } ;
struct sprd_compr_dma {int * chan; } ;
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {struct device* dev; } ;
struct snd_compr_stream {int direction; struct snd_soc_pcm_runtime* private_data; struct snd_compr_runtime* runtime; } ;
struct snd_compr_runtime {struct sprd_compr_stream* private_data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* close ) (int) ;} ;


 int DRV_NAME ;
 int devm_kfree (struct device*,struct sprd_compr_stream*) ;
 int dma_release_channel (int *) ;
 int snd_dma_free_pages (int *) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 int stub1 (int) ;

__attribute__((used)) static int sprd_platform_compr_free(struct snd_compr_stream *cstream)
{
 struct snd_compr_runtime *runtime = cstream->runtime;
 struct sprd_compr_stream *stream = runtime->private_data;
 struct snd_soc_pcm_runtime *rtd = cstream->private_data;
 struct snd_soc_component *component =
  snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct device *dev = component->dev;
 int stream_id = cstream->direction, i;

 for (i = 0; i < stream->num_channels; i++) {
  struct sprd_compr_dma *dma = &stream->dma[i];

  if (dma->chan) {
   dma_release_channel(dma->chan);
   dma->chan = ((void*)0);
  }
 }

 snd_dma_free_pages(&stream->compr_buffer);
 snd_dma_free_pages(&stream->iram_buffer);

 stream->compr_ops->close(stream_id);

 devm_kfree(dev, stream);
 return 0;
}
