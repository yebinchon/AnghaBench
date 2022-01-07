
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sprd_compr_stream {TYPE_3__* dma; TYPE_2__* compr_ops; int info_size; int info_phys; int num_channels; } ;
struct sprd_compr_params {int format; int rate; int info_size; int info_phys; int channels; int sample_rate; int direction; } ;
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {struct device* dev; } ;
struct snd_compr_stream {int direction; struct snd_soc_pcm_runtime* private_data; struct snd_compr_runtime* runtime; } ;
struct snd_compr_runtime {struct sprd_compr_stream* private_data; } ;
struct TYPE_4__ {int id; int bit_rate; int sample_rate; } ;
struct snd_compr_params {TYPE_1__ codec; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int chan; } ;
struct TYPE_5__ {int (* set_params ) (int ,struct sprd_compr_params*) ;} ;


 int DRV_NAME ;
 int dev_err (struct device*,char*,int) ;
 int dma_release_channel (int ) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 int sprd_platform_compr_dma_config (struct snd_compr_stream*,struct snd_compr_params*,int) ;
 int stub1 (int ,struct sprd_compr_params*) ;

__attribute__((used)) static int sprd_platform_compr_set_params(struct snd_compr_stream *cstream,
       struct snd_compr_params *params)
{
 struct snd_compr_runtime *runtime = cstream->runtime;
 struct sprd_compr_stream *stream = runtime->private_data;
 struct snd_soc_pcm_runtime *rtd = cstream->private_data;
 struct snd_soc_component *component =
  snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct device *dev = component->dev;
 struct sprd_compr_params compr_params = { };
 int ret;







 ret = sprd_platform_compr_dma_config(cstream, params, 1);
 if (ret) {
  dev_err(dev, "failed to config stage 1 DMA: %d\n", ret);
  return ret;
 }

 ret = sprd_platform_compr_dma_config(cstream, params, 0);
 if (ret) {
  dev_err(dev, "failed to config stage 0 DMA: %d\n", ret);
  goto config_err;
 }

 compr_params.direction = cstream->direction;
 compr_params.sample_rate = params->codec.sample_rate;
 compr_params.channels = stream->num_channels;
 compr_params.info_phys = stream->info_phys;
 compr_params.info_size = stream->info_size;
 compr_params.rate = params->codec.bit_rate;
 compr_params.format = params->codec.id;

 ret = stream->compr_ops->set_params(cstream->direction, &compr_params);
 if (ret) {
  dev_err(dev, "failed to set parameters: %d\n", ret);
  goto params_err;
 }

 return 0;

params_err:
 dma_release_channel(stream->dma[0].chan);
config_err:
 dma_release_channel(stream->dma[1].chan);
 return ret;
}
