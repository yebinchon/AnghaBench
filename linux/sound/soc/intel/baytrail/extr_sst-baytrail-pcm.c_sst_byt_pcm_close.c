
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_byt_priv_data {struct sst_byt* byt; struct sst_byt_pcm_data* pcm; } ;
struct sst_byt_pcm_data {int mutex; int * stream; int work; } ;
struct sst_byt {int dummy; } ;
struct snd_soc_pcm_runtime {int dev; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {size_t stream; struct snd_soc_pcm_runtime* private_data; } ;


 int DRV_NAME ;
 int cancel_work_sync (int *) ;
 int dev_dbg (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sst_byt_priv_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 int sst_byt_stream_free (struct sst_byt*,int *) ;

__attribute__((used)) static int sst_byt_pcm_close(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct sst_byt_priv_data *pdata = snd_soc_component_get_drvdata(component);
 struct sst_byt_pcm_data *pcm_data = &pdata->pcm[substream->stream];
 struct sst_byt *byt = pdata->byt;
 int ret;

 dev_dbg(rtd->dev, "PCM: close\n");

 cancel_work_sync(&pcm_data->work);
 mutex_lock(&pcm_data->mutex);
 ret = sst_byt_stream_free(byt, pcm_data->stream);
 if (ret < 0) {
  dev_dbg(rtd->dev, "Free stream fail\n");
  goto out;
 }
 pcm_data->stream = ((void*)0);

out:
 mutex_unlock(&pcm_data->mutex);
 return ret;
}
