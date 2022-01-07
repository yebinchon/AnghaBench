
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int RT5645_LOUT1 ;
 int RT5645_L_MUTE ;
 int RT5645_PWR_ANLG1 ;
 int RT5645_PWR_LM ;
 int RT5645_R_MUTE ;


 int hp_amp_power (struct snd_soc_component*,int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int rt5645_lout_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 129:
  hp_amp_power(component, 1);
  snd_soc_component_update_bits(component, RT5645_PWR_ANLG1,
   RT5645_PWR_LM, RT5645_PWR_LM);
  snd_soc_component_update_bits(component, RT5645_LOUT1,
   RT5645_L_MUTE | RT5645_R_MUTE, 0);
  break;

 case 128:
  snd_soc_component_update_bits(component, RT5645_LOUT1,
   RT5645_L_MUTE | RT5645_R_MUTE,
   RT5645_L_MUTE | RT5645_R_MUTE);
  snd_soc_component_update_bits(component, RT5645_PWR_ANLG1,
   RT5645_PWR_LM, 0);
  hp_amp_power(component, 0);
  break;

 default:
  return 0;
 }

 return 0;
}
