
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_byt_priv_data {int restore_stream; struct sst_byt* byt; struct sst_byt_pcm_data* pcm; } ;
struct sst_byt_pcm_data {int stream; int work; int hw_ptr; } ;
struct sst_byt {int dummy; } ;
struct snd_soc_pcm_runtime {int dev; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {size_t stream; struct snd_soc_pcm_runtime* private_data; } ;


 int DRV_NAME ;






 int dev_dbg (int ,char*,int) ;
 int schedule_work (int *) ;
 struct sst_byt_priv_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 int sst_byt_stream_pause (struct sst_byt*,int ) ;
 int sst_byt_stream_resume (struct sst_byt*,int ) ;
 int sst_byt_stream_start (struct sst_byt*,int ,int ) ;
 int sst_byt_stream_stop (struct sst_byt*,int ) ;

__attribute__((used)) static int sst_byt_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct sst_byt_priv_data *pdata = snd_soc_component_get_drvdata(component);
 struct sst_byt_pcm_data *pcm_data = &pdata->pcm[substream->stream];
 struct sst_byt *byt = pdata->byt;

 dev_dbg(rtd->dev, "PCM: trigger %d\n", cmd);

 switch (cmd) {
 case 130:
  pcm_data->hw_ptr = 0;
  sst_byt_stream_start(byt, pcm_data->stream, 0);
  break;
 case 131:
  if (pdata->restore_stream)
   schedule_work(&pcm_data->work);
  else
   sst_byt_stream_resume(byt, pcm_data->stream);
  break;
 case 132:
  sst_byt_stream_resume(byt, pcm_data->stream);
  break;
 case 129:
  sst_byt_stream_stop(byt, pcm_data->stream);
  break;
 case 128:
  pdata->restore_stream = 0;

 case 133:
  sst_byt_stream_pause(byt, pcm_data->stream);
  break;
 default:
  break;
 }

 return 0;
}
