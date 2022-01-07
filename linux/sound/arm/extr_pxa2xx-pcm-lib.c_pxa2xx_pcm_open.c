
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* cpu_dai; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_runtime {int hw; } ;
struct snd_dmaengine_dai_dma_data {int chan_name; } ;
struct TYPE_2__ {int dev; } ;


 int SNDRV_PCM_HW_PARAM_BUFFER_BYTES ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int SNDRV_PCM_HW_PARAM_PERIOD_BYTES ;
 int dma_request_slave_channel (int ,int ) ;
 int pxa2xx_pcm_hardware ;
 int snd_dmaengine_pcm_open (struct snd_pcm_substream*,int ) ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 int snd_pcm_hw_constraint_step (struct snd_pcm_runtime*,int ,int ,int) ;
 struct snd_dmaengine_dai_dma_data* snd_soc_dai_get_dma_data (TYPE_1__*,struct snd_pcm_substream*) ;

int pxa2xx_pcm_open(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_dmaengine_dai_dma_data *dma_params;
 int ret;

 runtime->hw = pxa2xx_pcm_hardware;

 dma_params = snd_soc_dai_get_dma_data(rtd->cpu_dai, substream);
 if (!dma_params)
  return 0;






 ret = snd_pcm_hw_constraint_step(runtime, 0,
  SNDRV_PCM_HW_PARAM_PERIOD_BYTES, 32);
 if (ret)
  return ret;

 ret = snd_pcm_hw_constraint_step(runtime, 0,
  SNDRV_PCM_HW_PARAM_BUFFER_BYTES, 32);
 if (ret)
  return ret;

 ret = snd_pcm_hw_constraint_integer(runtime,
         SNDRV_PCM_HW_PARAM_PERIODS);
 if (ret < 0)
  return ret;

 return snd_dmaengine_pcm_open(
  substream, dma_request_slave_channel(rtd->cpu_dai->dev,
           dma_params->chan_name));
}
