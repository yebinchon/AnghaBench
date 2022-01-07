
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int RT5665_HP_CHARGE_PUMP_1 ;
 int RT5665_OSW_L_DIS ;
 int RT5665_OSW_L_EN ;
 int RT5665_OSW_L_MASK ;
 int RT5665_PM_HP_HV ;
 int RT5665_PM_HP_LV ;
 int RT5665_PM_HP_MASK ;


 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int rt5665_charge_pump_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 128:
  snd_soc_component_update_bits(component, RT5665_HP_CHARGE_PUMP_1,
   RT5665_PM_HP_MASK | RT5665_OSW_L_MASK,
   RT5665_PM_HP_HV | RT5665_OSW_L_EN);
  break;
 case 129:
  snd_soc_component_update_bits(component, RT5665_HP_CHARGE_PUMP_1,
   RT5665_PM_HP_MASK | RT5665_OSW_L_MASK,
   RT5665_PM_HP_LV | RT5665_OSW_L_DIS);
  break;
 default:
  return 0;
 }

 return 0;
}
