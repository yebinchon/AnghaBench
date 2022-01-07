
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int AK4671_LOUT2_POWER_MANAGERMENT ;
 int AK4671_MUTEN ;


 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int ak4671_out2_event(struct snd_soc_dapm_widget *w,
  struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 129:
  snd_soc_component_update_bits(component, AK4671_LOUT2_POWER_MANAGERMENT,
        AK4671_MUTEN, AK4671_MUTEN);
  break;
 case 128:
  snd_soc_component_update_bits(component, AK4671_LOUT2_POWER_MANAGERMENT,
        AK4671_MUTEN, 0);
  break;
 }

 return 0;
}
