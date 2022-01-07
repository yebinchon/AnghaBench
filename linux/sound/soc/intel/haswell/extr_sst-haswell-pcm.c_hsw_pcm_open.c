
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sst_hsw {int dummy; } ;
struct snd_soc_pcm_runtime {int dev; TYPE_1__* cpu_dai; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {size_t stream; struct snd_soc_pcm_runtime* private_data; } ;
struct hsw_priv_data {int dev; struct hsw_pcm_data** pcm; struct sst_hsw* hsw; } ;
struct hsw_pcm_data {int mutex; int * stream; struct snd_pcm_substream* substream; } ;
struct TYPE_4__ {int dai_id; } ;
struct TYPE_3__ {size_t id; } ;


 int DRV_NAME ;
 int EINVAL ;
 int dev_err (int ,char*) ;
 int hsw_notify_pointer ;
 int hsw_pcm_hardware ;
 TYPE_2__* mod_map ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 struct hsw_priv_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 int snd_soc_set_runtime_hwparams (struct snd_pcm_substream*,int *) ;
 int * sst_hsw_stream_new (struct sst_hsw*,size_t,int ,struct hsw_pcm_data*) ;

__attribute__((used)) static int hsw_pcm_open(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct hsw_priv_data *pdata = snd_soc_component_get_drvdata(component);
 struct hsw_pcm_data *pcm_data;
 struct sst_hsw *hsw = pdata->hsw;
 int dai;

 dai = mod_map[rtd->cpu_dai->id].dai_id;
 pcm_data = &pdata->pcm[dai][substream->stream];

 mutex_lock(&pcm_data->mutex);
 pm_runtime_get_sync(pdata->dev);

 pcm_data->substream = substream;

 snd_soc_set_runtime_hwparams(substream, &hsw_pcm_hardware);

 pcm_data->stream = sst_hsw_stream_new(hsw, rtd->cpu_dai->id,
  hsw_notify_pointer, pcm_data);
 if (pcm_data->stream == ((void*)0)) {
  dev_err(rtd->dev, "error: failed to create stream\n");
  pm_runtime_mark_last_busy(pdata->dev);
  pm_runtime_put_autosuspend(pdata->dev);
  mutex_unlock(&pcm_data->mutex);
  return -EINVAL;
 }

 mutex_unlock(&pcm_data->mutex);
 return 0;
}
