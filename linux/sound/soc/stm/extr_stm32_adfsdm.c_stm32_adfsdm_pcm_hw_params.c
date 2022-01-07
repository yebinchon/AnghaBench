
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_adfsdm_priv {int iio_cb; int pcm_buff; } ;
struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_pcm_substream {TYPE_1__* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int dma_area; } ;


 int iio_channel_cb_set_buffer_watermark (int ,int ) ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int params_period_size (struct snd_pcm_hw_params*) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;
 struct stm32_adfsdm_priv* snd_soc_dai_get_drvdata (int ) ;

__attribute__((used)) static int stm32_adfsdm_pcm_hw_params(struct snd_pcm_substream *substream,
          struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct stm32_adfsdm_priv *priv =
  snd_soc_dai_get_drvdata(rtd->cpu_dai);
 int ret;

 ret = snd_pcm_lib_malloc_pages(substream, params_buffer_bytes(params));
 if (ret < 0)
  return ret;
 priv->pcm_buff = substream->runtime->dma_area;

 return iio_channel_cb_set_buffer_watermark(priv->iio_cb,
         params_period_size(params));
}
