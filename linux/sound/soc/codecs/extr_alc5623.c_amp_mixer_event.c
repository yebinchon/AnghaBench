
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int ALC5623_HID_CTRL_DATA ;
 int ALC5623_HID_CTRL_INDEX ;


 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int amp_mixer_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);





 snd_soc_component_write(component, ALC5623_HID_CTRL_INDEX, 0x46);

 switch (event) {
 case 128:
  snd_soc_component_write(component, ALC5623_HID_CTRL_DATA, 0xFFFF);
  break;
 case 129:
  snd_soc_component_write(component, ALC5623_HID_CTRL_DATA, 0);
  break;
 }

 return 0;
}
