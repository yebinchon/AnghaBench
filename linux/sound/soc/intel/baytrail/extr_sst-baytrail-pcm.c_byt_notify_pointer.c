
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sst_byt_stream {int dummy; } ;
struct sst_byt_priv_data {struct sst_byt* byt; } ;
struct sst_byt_pcm_data {int hw_ptr; int stream; struct snd_pcm_substream* substream; } ;
struct sst_byt {int dummy; } ;
struct snd_soc_pcm_runtime {int dev; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int buffer_size; TYPE_1__* control; } ;
struct TYPE_2__ {int appl_ptr; } ;


 int DRV_NAME ;
 int dev_dbg (int ,char*,int ,int ) ;
 int frames_to_bytes (struct snd_pcm_runtime*,int) ;
 int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;
 struct sst_byt_priv_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 int sst_byt_get_dsp_position (struct sst_byt*,int ,int ) ;

__attribute__((used)) static u32 byt_notify_pointer(struct sst_byt_stream *stream, void *data)
{
 struct sst_byt_pcm_data *pcm_data = data;
 struct snd_pcm_substream *substream = pcm_data->substream;
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct sst_byt_priv_data *pdata = snd_soc_component_get_drvdata(component);
 struct sst_byt *byt = pdata->byt;
 u32 pos, hw_pos;

 hw_pos = sst_byt_get_dsp_position(byt, pcm_data->stream,
       snd_pcm_lib_buffer_bytes(substream));
 pcm_data->hw_ptr = hw_pos;
 pos = frames_to_bytes(runtime,
         (runtime->control->appl_ptr %
          runtime->buffer_size));

 dev_dbg(rtd->dev, "PCM: App/DMA pointer %u/%u bytes\n", pos, hw_pos);

 snd_pcm_period_elapsed(substream);
 return pos;
}
