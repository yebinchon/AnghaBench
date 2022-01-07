
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int WM8993_HPOUT1L_ZC ;
 int WM8993_HPOUT1R_ZC ;
 int WM8993_HPOUT1_VU ;
 int WM8993_IN1_VU ;
 int WM8993_IN2_VU ;
 int WM8993_LEFT_LINE_INPUT_1_2_VOLUME ;
 int WM8993_LEFT_LINE_INPUT_3_4_VOLUME ;
 int WM8993_LEFT_OPGA_VOLUME ;
 int WM8993_LEFT_OUTPUT_VOLUME ;
 int WM8993_MIXOUTL_ZC ;
 int WM8993_MIXOUTR_ZC ;
 int WM8993_MIXOUT_VU ;
 int WM8993_RIGHT_LINE_INPUT_1_2_VOLUME ;
 int WM8993_RIGHT_LINE_INPUT_3_4_VOLUME ;
 int WM8993_RIGHT_OPGA_VOLUME ;
 int WM8993_RIGHT_OUTPUT_VOLUME ;
 int WM8993_SPEAKER_VOLUME_LEFT ;
 int WM8993_SPEAKER_VOLUME_RIGHT ;
 int WM8993_SPKOUT_VU ;
 int analogue_dapm_widgets ;
 int analogue_snd_controls ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int ) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int ,int ) ;

int wm_hubs_add_analogue_controls(struct snd_soc_component *component)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);


 snd_soc_component_update_bits(component, WM8993_LEFT_LINE_INPUT_1_2_VOLUME,
       WM8993_IN1_VU, WM8993_IN1_VU);
 snd_soc_component_update_bits(component, WM8993_RIGHT_LINE_INPUT_1_2_VOLUME,
       WM8993_IN1_VU, WM8993_IN1_VU);
 snd_soc_component_update_bits(component, WM8993_LEFT_LINE_INPUT_3_4_VOLUME,
       WM8993_IN2_VU, WM8993_IN2_VU);
 snd_soc_component_update_bits(component, WM8993_RIGHT_LINE_INPUT_3_4_VOLUME,
       WM8993_IN2_VU, WM8993_IN2_VU);

 snd_soc_component_update_bits(component, WM8993_SPEAKER_VOLUME_LEFT,
       WM8993_SPKOUT_VU, WM8993_SPKOUT_VU);
 snd_soc_component_update_bits(component, WM8993_SPEAKER_VOLUME_RIGHT,
       WM8993_SPKOUT_VU, WM8993_SPKOUT_VU);

 snd_soc_component_update_bits(component, WM8993_LEFT_OUTPUT_VOLUME,
       WM8993_HPOUT1_VU | WM8993_HPOUT1L_ZC,
       WM8993_HPOUT1_VU | WM8993_HPOUT1L_ZC);
 snd_soc_component_update_bits(component, WM8993_RIGHT_OUTPUT_VOLUME,
       WM8993_HPOUT1_VU | WM8993_HPOUT1R_ZC,
       WM8993_HPOUT1_VU | WM8993_HPOUT1R_ZC);

 snd_soc_component_update_bits(component, WM8993_LEFT_OPGA_VOLUME,
       WM8993_MIXOUTL_ZC | WM8993_MIXOUT_VU,
       WM8993_MIXOUTL_ZC | WM8993_MIXOUT_VU);
 snd_soc_component_update_bits(component, WM8993_RIGHT_OPGA_VOLUME,
       WM8993_MIXOUTR_ZC | WM8993_MIXOUT_VU,
       WM8993_MIXOUTR_ZC | WM8993_MIXOUT_VU);

 snd_soc_add_component_controls(component, analogue_snd_controls,
        ARRAY_SIZE(analogue_snd_controls));

 snd_soc_dapm_new_controls(dapm, analogue_dapm_widgets,
      ARRAY_SIZE(analogue_dapm_widgets));
 return 0;
}
