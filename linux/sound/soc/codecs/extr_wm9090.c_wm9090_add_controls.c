
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * agc; scalar_t__ agc_ena; scalar_t__ lin2_diff; scalar_t__ lin1_diff; } ;
struct wm9090_priv {TYPE_1__ pdata; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ WM9090_AGC_CONTROL_0 ;
 int WM9090_AGC_ENA ;
 int WM9090_POWER_MANAGEMENT_3 ;
 int * audio_map ;
 int * audio_map_in1_diff ;
 int * audio_map_in1_se ;
 int * audio_map_in2_diff ;
 int * audio_map_in2_se ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int *,int) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct wm9090_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,scalar_t__,int ) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int *,int) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int *,int) ;
 int * wm9090_controls ;
 int * wm9090_dapm_widgets ;
 int * wm9090_in1_se_controls ;
 int * wm9090_in2_se_controls ;

__attribute__((used)) static int wm9090_add_controls(struct snd_soc_component *component)
{
 struct wm9090_priv *wm9090 = snd_soc_component_get_drvdata(component);
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 int i;

 snd_soc_dapm_new_controls(dapm, wm9090_dapm_widgets,
      ARRAY_SIZE(wm9090_dapm_widgets));

 snd_soc_dapm_add_routes(dapm, audio_map, ARRAY_SIZE(audio_map));

 snd_soc_add_component_controls(component, wm9090_controls,
        ARRAY_SIZE(wm9090_controls));

 if (wm9090->pdata.lin1_diff) {
  snd_soc_dapm_add_routes(dapm, audio_map_in1_diff,
     ARRAY_SIZE(audio_map_in1_diff));
 } else {
  snd_soc_dapm_add_routes(dapm, audio_map_in1_se,
     ARRAY_SIZE(audio_map_in1_se));
  snd_soc_add_component_controls(component, wm9090_in1_se_controls,
         ARRAY_SIZE(wm9090_in1_se_controls));
 }

 if (wm9090->pdata.lin2_diff) {
  snd_soc_dapm_add_routes(dapm, audio_map_in2_diff,
     ARRAY_SIZE(audio_map_in2_diff));
 } else {
  snd_soc_dapm_add_routes(dapm, audio_map_in2_se,
     ARRAY_SIZE(audio_map_in2_se));
  snd_soc_add_component_controls(component, wm9090_in2_se_controls,
         ARRAY_SIZE(wm9090_in2_se_controls));
 }

 if (wm9090->pdata.agc_ena) {
  for (i = 0; i < ARRAY_SIZE(wm9090->pdata.agc); i++)
   snd_soc_component_write(component, WM9090_AGC_CONTROL_0 + i,
          wm9090->pdata.agc[i]);
  snd_soc_component_update_bits(component, WM9090_POWER_MANAGEMENT_3,
        WM9090_AGC_ENA, WM9090_AGC_ENA);
 } else {
  snd_soc_component_update_bits(component, WM9090_POWER_MANAGEMENT_3,
        WM9090_AGC_ENA, 0);
 }

 return 0;

}
