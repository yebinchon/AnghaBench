
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int SND_SOC_BIAS_STANDBY ;
 int WM8990_ALRCGPIO1 ;
 int WM8990_AUDIO_INTERFACE_4 ;
 int WM8990_GPIO1_GPIO2 ;
 int WM8990_GPIO1_SEL_MASK ;
 int WM8990_LEFT_OUTPUT_VOLUME ;
 int WM8990_OPCLK_ENA ;
 int WM8990_POWER_MANAGEMENT_2 ;
 int WM8990_RIGHT_OUTPUT_VOLUME ;
 int snd_soc_component_force_bias_level (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 int wm8990_reset (struct snd_soc_component*) ;

__attribute__((used)) static int wm8990_probe(struct snd_soc_component *component)
{
 wm8990_reset(component);


 snd_soc_component_force_bias_level(component, SND_SOC_BIAS_STANDBY);

 snd_soc_component_update_bits(component, WM8990_AUDIO_INTERFACE_4,
       WM8990_ALRCGPIO1, WM8990_ALRCGPIO1);

 snd_soc_component_update_bits(component, WM8990_GPIO1_GPIO2,
       WM8990_GPIO1_SEL_MASK, 1);

 snd_soc_component_update_bits(component, WM8990_POWER_MANAGEMENT_2,
       WM8990_OPCLK_ENA, WM8990_OPCLK_ENA);

 snd_soc_component_write(component, WM8990_LEFT_OUTPUT_VOLUME, 0x50 | (1<<8));
 snd_soc_component_write(component, WM8990_RIGHT_OUTPUT_VOLUME, 0x50 | (1<<8));

 return 0;
}
