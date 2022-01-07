
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sst_hsw_stream {int dummy; } ;
struct sst_hsw {int dummy; } ;
struct snd_soc_pcm_runtime {TYPE_1__* cpu_dai; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {size_t stream; struct snd_pcm_runtime* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_runtime {int buffer_size; TYPE_2__* control; } ;
struct hsw_priv_data {struct hsw_pcm_data** pcm; struct sst_hsw* hsw; } ;
struct hsw_pcm_data {struct sst_hsw_stream* stream; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_6__ {int dai_id; } ;
struct TYPE_5__ {int appl_ptr; } ;
struct TYPE_4__ {size_t id; } ;


 int DRV_NAME ;







 TYPE_3__* mod_map ;
 struct hsw_priv_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 int sst_hsw_stream_pause (struct sst_hsw*,struct sst_hsw_stream*,int ) ;
 int sst_hsw_stream_resume (struct sst_hsw*,struct sst_hsw_stream*,int ) ;
 int sst_hsw_stream_set_old_position (struct sst_hsw*,struct sst_hsw_stream*,int) ;
 int sst_hsw_stream_set_silence_start (struct sst_hsw*,struct sst_hsw_stream*,int) ;

__attribute__((used)) static int hsw_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct hsw_priv_data *pdata = snd_soc_component_get_drvdata(component);
 struct hsw_pcm_data *pcm_data;
 struct sst_hsw_stream *sst_stream;
 struct sst_hsw *hsw = pdata->hsw;
 struct snd_pcm_runtime *runtime = substream->runtime;
 snd_pcm_uframes_t pos;
 int dai;

 dai = mod_map[rtd->cpu_dai->id].dai_id;
 pcm_data = &pdata->pcm[dai][substream->stream];
 sst_stream = pcm_data->stream;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  sst_hsw_stream_set_silence_start(hsw, sst_stream, 0);
  sst_hsw_stream_resume(hsw, pcm_data->stream, 0);
  break;
 case 129:
 case 128:
 case 133:
  sst_hsw_stream_set_silence_start(hsw, sst_stream, 0);
  sst_hsw_stream_pause(hsw, pcm_data->stream, 0);
  break;
 case 134:
  pos = runtime->control->appl_ptr % runtime->buffer_size;
  sst_hsw_stream_set_old_position(hsw, pcm_data->stream, pos);
  sst_hsw_stream_set_silence_start(hsw, sst_stream, 1);
  break;
 default:
  break;
 }

 return 0;
}
