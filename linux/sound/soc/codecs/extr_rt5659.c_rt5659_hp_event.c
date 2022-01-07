
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int RT5659_DEPOP_1 ;
 int RT5659_HP_CHARGE_PUMP_1 ;


 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int rt5659_hp_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 129:
  snd_soc_component_write(component, RT5659_HP_CHARGE_PUMP_1, 0x0e1e);
  snd_soc_component_update_bits(component, RT5659_DEPOP_1, 0x0010, 0x0010);
  break;

 case 128:
  snd_soc_component_write(component, RT5659_DEPOP_1, 0x0000);
  break;

 default:
  return 0;
 }

 return 0;
}
