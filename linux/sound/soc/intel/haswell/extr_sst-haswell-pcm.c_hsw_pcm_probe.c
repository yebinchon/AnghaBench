
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sst_pdata {int dsp; struct device* dma_dev; } ;
struct snd_soc_component {int card; struct device* dev; } ;
struct hsw_priv_data {int ** dmab; TYPE_1__** pcm; int soc_card; int pm_state; struct device* dev; int hsw; } ;
struct device {int dummy; } ;
struct TYPE_8__ {scalar_t__ channels_min; } ;
struct TYPE_7__ {scalar_t__ channels_min; } ;
struct TYPE_9__ {TYPE_3__ capture; TYPE_2__ playback; } ;
struct TYPE_6__ {int mutex; } ;


 int ARRAY_SIZE (TYPE_4__*) ;
 int ENODEV ;
 int HSW_PM_STATE_D0 ;
 int PAGE_SIZE ;
 int SNDRV_DMA_TYPE_DEV ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int SST_RUNTIME_SUSPEND_DELAY ;
 struct sst_pdata* dev_get_platdata (struct device*) ;
 TYPE_4__* hsw_dais ;
 int hsw_pcm_create_modules (struct hsw_priv_data*) ;
 int mutex_init (int *) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_idle (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int ) ;
 int pm_runtime_use_autosuspend (struct device*) ;
 int snd_dma_alloc_pages (int ,struct device*,int ,int *) ;
 int snd_dma_free_pages (int *) ;
 struct hsw_priv_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int hsw_pcm_probe(struct snd_soc_component *component)
{
 struct hsw_priv_data *priv_data = snd_soc_component_get_drvdata(component);
 struct sst_pdata *pdata = dev_get_platdata(component->dev);
 struct device *dma_dev, *dev;
 int i, ret = 0;

 if (!pdata)
  return -ENODEV;

 dev = component->dev;
 dma_dev = pdata->dma_dev;

 priv_data->hsw = pdata->dsp;
 priv_data->dev = dev;
 priv_data->pm_state = HSW_PM_STATE_D0;
 priv_data->soc_card = component->card;


 for (i = 0; i < ARRAY_SIZE(hsw_dais); i++) {


  if (hsw_dais[i].playback.channels_min) {
   mutex_init(&priv_data->pcm[i][SNDRV_PCM_STREAM_PLAYBACK].mutex);
   ret = snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV, dma_dev,
    PAGE_SIZE, &priv_data->dmab[i][0]);
   if (ret < 0)
    goto err;
  }


  if (hsw_dais[i].capture.channels_min) {
   mutex_init(&priv_data->pcm[i][SNDRV_PCM_STREAM_CAPTURE].mutex);
   ret = snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV, dma_dev,
    PAGE_SIZE, &priv_data->dmab[i][1]);
   if (ret < 0)
    goto err;
  }
 }


 ret = hsw_pcm_create_modules(priv_data);
 if (ret < 0)
  goto err;


 pm_runtime_set_autosuspend_delay(dev, SST_RUNTIME_SUSPEND_DELAY);
 pm_runtime_use_autosuspend(dev);
 pm_runtime_enable(dev);
 pm_runtime_idle(dev);

 return 0;

err:
 for (--i; i >= 0; i--) {
  if (hsw_dais[i].playback.channels_min)
   snd_dma_free_pages(&priv_data->dmab[i][0]);
  if (hsw_dais[i].capture.channels_min)
   snd_dma_free_pages(&priv_data->dmab[i][1]);
 }
 return ret;
}
