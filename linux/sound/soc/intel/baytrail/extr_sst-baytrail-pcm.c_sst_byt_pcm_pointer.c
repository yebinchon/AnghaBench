
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_byt_priv_data {struct sst_byt_pcm_data* pcm; } ;
struct sst_byt_pcm_data {int hw_ptr; } ;
struct snd_soc_pcm_runtime {int dev; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {size_t stream; struct snd_pcm_runtime* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_runtime {int dummy; } ;
typedef int snd_pcm_uframes_t ;


 int DRV_NAME ;
 int bytes_to_frames (struct snd_pcm_runtime*,int ) ;
 int dev_dbg (int ,char*,int ) ;
 struct sst_byt_priv_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;

__attribute__((used)) static snd_pcm_uframes_t sst_byt_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct sst_byt_priv_data *pdata = snd_soc_component_get_drvdata(component);
 struct sst_byt_pcm_data *pcm_data = &pdata->pcm[substream->stream];

 dev_dbg(rtd->dev, "PCM: DMA pointer %u bytes\n", pcm_data->hw_ptr);

 return bytes_to_frames(runtime, pcm_data->hw_ptr);
}
