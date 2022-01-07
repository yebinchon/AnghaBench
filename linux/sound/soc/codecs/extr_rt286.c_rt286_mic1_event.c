
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int RT286_A_BIAS_CTRL2 ;
 int RT286_A_BIAS_CTRL3 ;


 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int rt286_mic1_event(struct snd_soc_dapm_widget *w,
        struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 128:
  snd_soc_component_update_bits(component,
   RT286_A_BIAS_CTRL3, 0xc000, 0x8000);
  snd_soc_component_update_bits(component,
   RT286_A_BIAS_CTRL2, 0xc000, 0x8000);
  break;
 case 129:
  snd_soc_component_update_bits(component,
   RT286_A_BIAS_CTRL3, 0xc000, 0x0000);
  snd_soc_component_update_bits(component,
   RT286_A_BIAS_CTRL2, 0xc000, 0x0000);
  break;
 default:
  return 0;
 }

 return 0;
}
