
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sprd_pcm_dma_private {int hw_chan; struct sprd_pcm_dma_data* data; struct snd_pcm_substream* substream; } ;
struct sprd_pcm_dma_data {int phys; scalar_t__ virt; } ;
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {struct device* dev; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int periods_max; } ;
struct snd_pcm_runtime {struct sprd_pcm_dma_private* private_data; TYPE_1__ hw; } ;
struct device {int dummy; } ;


 int DRV_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_PCM_HW_PARAM_BUFFER_BYTES ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int SNDRV_PCM_HW_PARAM_PERIOD_BYTES ;
 int SPRD_PCM_CHANNEL_MAX ;
 int SPRD_PCM_DMA_BRUST_LEN ;
 int SPRD_PCM_DMA_LINKLIST_SIZE ;
 int devm_kfree (struct device*,struct sprd_pcm_dma_private*) ;
 struct sprd_pcm_dma_private* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ dmam_alloc_coherent (struct device*,int,int *,int ) ;
 int dmam_free_coherent (struct device*,int,scalar_t__,int ) ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 int snd_pcm_hw_constraint_step (struct snd_pcm_runtime*,int ,int ,int ) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 int snd_soc_set_runtime_hwparams (struct snd_pcm_substream*,int *) ;
 int sprd_pcm_hardware ;

__attribute__((used)) static int sprd_pcm_open(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_component *component =
  snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct device *dev = component->dev;
 struct sprd_pcm_dma_private *dma_private;
 int hw_chan = SPRD_PCM_CHANNEL_MAX;
 int size, ret, i;

 snd_soc_set_runtime_hwparams(substream, &sprd_pcm_hardware);

 ret = snd_pcm_hw_constraint_step(runtime, 0,
      SNDRV_PCM_HW_PARAM_PERIOD_BYTES,
      SPRD_PCM_DMA_BRUST_LEN);
 if (ret < 0)
  return ret;

 ret = snd_pcm_hw_constraint_step(runtime, 0,
      SNDRV_PCM_HW_PARAM_BUFFER_BYTES,
      SPRD_PCM_DMA_BRUST_LEN);
 if (ret < 0)
  return ret;

 ret = snd_pcm_hw_constraint_integer(runtime,
         SNDRV_PCM_HW_PARAM_PERIODS);
 if (ret < 0)
  return ret;

 dma_private = devm_kzalloc(dev, sizeof(*dma_private), GFP_KERNEL);
 if (!dma_private)
  return -ENOMEM;

 size = runtime->hw.periods_max * SPRD_PCM_DMA_LINKLIST_SIZE;

 for (i = 0; i < hw_chan; i++) {
  struct sprd_pcm_dma_data *data = &dma_private->data[i];

  data->virt = dmam_alloc_coherent(dev, size, &data->phys,
       GFP_KERNEL);
  if (!data->virt) {
   ret = -ENOMEM;
   goto error;
  }
 }

 dma_private->hw_chan = hw_chan;
 runtime->private_data = dma_private;
 dma_private->substream = substream;

 return 0;

error:
 for (i = 0; i < hw_chan; i++) {
  struct sprd_pcm_dma_data *data = &dma_private->data[i];

  if (data->virt)
   dmam_free_coherent(dev, size, data->virt, data->phys);
 }

 devm_kfree(dev, dma_private);
 return ret;
}
