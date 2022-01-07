
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u32 ;
struct sst_hsw {int dummy; } ;
struct snd_soc_pcm_runtime {int dev; TYPE_1__* cpu_dai; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {size_t stream; struct snd_pcm_runtime* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_runtime {int dummy; } ;
struct hsw_priv_data {struct hsw_pcm_data** pcm; struct sst_hsw* hsw; } ;
struct hsw_pcm_data {int stream; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_4__ {int dai_id; } ;
struct TYPE_3__ {size_t id; } ;


 int DRV_NAME ;
 int bytes_to_frames (struct snd_pcm_runtime*,int ) ;
 int dev_vdbg (int ,char*,int ,int ) ;
 TYPE_2__* mod_map ;
 struct hsw_priv_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 int sst_hsw_get_dsp_position (struct sst_hsw*,int ) ;
 int sst_hsw_get_dsp_presentation_position (struct sst_hsw*,int ) ;

__attribute__((used)) static snd_pcm_uframes_t hsw_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct hsw_priv_data *pdata = snd_soc_component_get_drvdata(component);
 struct hsw_pcm_data *pcm_data;
 struct sst_hsw *hsw = pdata->hsw;
 snd_pcm_uframes_t offset;
 uint64_t ppos;
 u32 position;
 int dai;

 dai = mod_map[rtd->cpu_dai->id].dai_id;
 pcm_data = &pdata->pcm[dai][substream->stream];
 position = sst_hsw_get_dsp_position(hsw, pcm_data->stream);

 offset = bytes_to_frames(runtime, position);
 ppos = sst_hsw_get_dsp_presentation_position(hsw, pcm_data->stream);

 dev_vdbg(rtd->dev, "PCM: DMA pointer %du bytes, pos %llu\n",
  position, ppos);
 return offset;
}
