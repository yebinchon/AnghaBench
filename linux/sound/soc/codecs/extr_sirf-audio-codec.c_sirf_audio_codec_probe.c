
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {TYPE_1__* dev; } ;
struct TYPE_2__ {int of_node; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int atlas6_codec_clock_dapm_widget ;
 int * atlas6_output_driver_dapm_widgets ;
 scalar_t__ of_device_is_compatible (int ,char*) ;
 int pm_runtime_enable (TYPE_1__*) ;
 int prima2_codec_clock_dapm_widget ;
 int * prima2_output_driver_dapm_widgets ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int *,int) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int *,int) ;
 int * volume_controls_atlas6 ;
 int * volume_controls_prima2 ;

__attribute__((used)) static int sirf_audio_codec_probe(struct snd_soc_component *component)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);

 pm_runtime_enable(component->dev);

 if (of_device_is_compatible(component->dev->of_node, "sirf,prima2-audio-codec")) {
  snd_soc_dapm_new_controls(dapm,
   prima2_output_driver_dapm_widgets,
   ARRAY_SIZE(prima2_output_driver_dapm_widgets));
  snd_soc_dapm_new_controls(dapm,
   &prima2_codec_clock_dapm_widget, 1);
  return snd_soc_add_component_controls(component,
   volume_controls_prima2,
   ARRAY_SIZE(volume_controls_prima2));
 }
 if (of_device_is_compatible(component->dev->of_node, "sirf,atlas6-audio-codec")) {
  snd_soc_dapm_new_controls(dapm,
   atlas6_output_driver_dapm_widgets,
   ARRAY_SIZE(atlas6_output_driver_dapm_widgets));
  snd_soc_dapm_new_controls(dapm,
   &atlas6_codec_clock_dapm_widget, 1);
  return snd_soc_add_component_controls(component,
   volume_controls_atlas6,
   ARRAY_SIZE(volume_controls_atlas6));
 }

 return -EINVAL;
}
