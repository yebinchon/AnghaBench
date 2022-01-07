
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_byt_priv_data {struct sst_byt* byt; struct sst_byt_pcm_data* pcm; } ;
struct sst_byt_pcm_data {int mutex; int * stream; struct snd_pcm_substream* substream; } ;
struct sst_byt {int dummy; } ;
struct snd_soc_pcm_runtime {int dev; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {size_t stream; struct snd_soc_pcm_runtime* private_data; } ;


 int DRV_NAME ;
 int EINVAL ;
 int byt_notify_pointer ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sst_byt_priv_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 int snd_soc_set_runtime_hwparams (struct snd_pcm_substream*,int *) ;
 int sst_byt_pcm_hardware ;
 int * sst_byt_stream_new (struct sst_byt*,int,int ,struct sst_byt_pcm_data*) ;

__attribute__((used)) static int sst_byt_pcm_open(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct sst_byt_priv_data *pdata = snd_soc_component_get_drvdata(component);
 struct sst_byt_pcm_data *pcm_data = &pdata->pcm[substream->stream];
 struct sst_byt *byt = pdata->byt;

 dev_dbg(rtd->dev, "PCM: open\n");

 mutex_lock(&pcm_data->mutex);

 pcm_data->substream = substream;

 snd_soc_set_runtime_hwparams(substream, &sst_byt_pcm_hardware);

 pcm_data->stream = sst_byt_stream_new(byt, substream->stream + 1,
           byt_notify_pointer, pcm_data);
 if (pcm_data->stream == ((void*)0)) {
  dev_err(rtd->dev, "failed to create stream\n");
  mutex_unlock(&pcm_data->mutex);
  return -EINVAL;
 }

 mutex_unlock(&pcm_data->mutex);
 return 0;
}
