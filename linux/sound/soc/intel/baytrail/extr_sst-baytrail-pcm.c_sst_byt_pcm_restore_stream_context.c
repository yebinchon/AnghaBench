
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_byt_priv_data {struct sst_byt* byt; struct sst_byt_pcm_data* pcm; } ;
struct sst_byt_pcm_data {int hw_ptr; int stream; } ;
struct sst_byt {int dummy; } ;
struct snd_soc_pcm_runtime {int dev; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {size_t stream; struct snd_soc_pcm_runtime* private_data; } ;


 int DRV_NAME ;
 int dev_dbg (int ,char*,int ) ;
 int dev_err (int ,char*,int) ;
 struct sst_byt_priv_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 int sst_byt_stream_commit (struct sst_byt*,int ) ;
 int sst_byt_stream_start (struct sst_byt*,int ,int ) ;

__attribute__((used)) static int sst_byt_pcm_restore_stream_context(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct sst_byt_priv_data *pdata = snd_soc_component_get_drvdata(component);
 struct sst_byt_pcm_data *pcm_data = &pdata->pcm[substream->stream];
 struct sst_byt *byt = pdata->byt;
 int ret;


 ret = sst_byt_stream_commit(byt, pcm_data->stream);
 if (ret < 0) {
  dev_err(rtd->dev, "PCM: failed stream commit %d\n", ret);
  return ret;
 }

 sst_byt_stream_start(byt, pcm_data->stream, pcm_data->hw_ptr);

 dev_dbg(rtd->dev, "stream context restored at offset %d\n",
  pcm_data->hw_ptr);

 return 0;
}
