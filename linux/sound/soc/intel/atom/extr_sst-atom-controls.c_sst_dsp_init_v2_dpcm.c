
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sst_data {int byte_stream; } ;
struct snd_soc_dapm_context {int card; } ;
struct snd_soc_component {int dev; } ;
struct TYPE_2__ {int ramp_duration; void* r_gain; void* l_gain; int mute; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SST_GAIN_MUTE_DEFAULT ;
 int SST_GAIN_RAMP_DURATION_DEFAULT ;
 void* SST_GAIN_VOLUME_DEFAULT ;
 int SST_MAX_BIN_BYTES ;
 int devm_kzalloc (int ,int ,int ) ;
 int intercon ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct sst_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,int) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int ,int) ;
 int snd_soc_dapm_new_widgets (int ) ;
 int sst_algo_control_init (int ) ;
 int sst_algo_controls ;
 int sst_dapm_widgets ;
 int sst_gain_controls ;
 TYPE_1__* sst_gains ;
 int sst_map_modules_to_pipe (struct snd_soc_component*) ;
 int sst_slot_controls ;

int sst_dsp_init_v2_dpcm(struct snd_soc_component *component)
{
 int i, ret = 0;
 struct snd_soc_dapm_context *dapm =
   snd_soc_component_get_dapm(component);
 struct sst_data *drv = snd_soc_component_get_drvdata(component);
 unsigned int gains = ARRAY_SIZE(sst_gain_controls)/3;

 drv->byte_stream = devm_kzalloc(component->dev,
     SST_MAX_BIN_BYTES, GFP_KERNEL);
 if (!drv->byte_stream)
  return -ENOMEM;

 snd_soc_dapm_new_controls(dapm, sst_dapm_widgets,
   ARRAY_SIZE(sst_dapm_widgets));
 snd_soc_dapm_add_routes(dapm, intercon,
   ARRAY_SIZE(intercon));
 snd_soc_dapm_new_widgets(dapm->card);

 for (i = 0; i < gains; i++) {
  sst_gains[i].mute = SST_GAIN_MUTE_DEFAULT;
  sst_gains[i].l_gain = SST_GAIN_VOLUME_DEFAULT;
  sst_gains[i].r_gain = SST_GAIN_VOLUME_DEFAULT;
  sst_gains[i].ramp_duration = SST_GAIN_RAMP_DURATION_DEFAULT;
 }

 ret = snd_soc_add_component_controls(component, sst_gain_controls,
   ARRAY_SIZE(sst_gain_controls));
 if (ret)
  return ret;


 ret = sst_algo_control_init(component->dev);
 if (ret)
  return ret;
 ret = snd_soc_add_component_controls(component, sst_algo_controls,
   ARRAY_SIZE(sst_algo_controls));
 if (ret)
  return ret;

 ret = snd_soc_add_component_controls(component, sst_slot_controls,
   ARRAY_SIZE(sst_slot_controls));
 if (ret)
  return ret;

 ret = sst_map_modules_to_pipe(component);

 return ret;
}
