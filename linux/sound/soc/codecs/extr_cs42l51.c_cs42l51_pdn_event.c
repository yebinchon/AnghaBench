
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int CS42L51_POWER_CTL1 ;
 int CS42L51_POWER_CTL1_PDN ;


 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int cs42l51_pdn_event(struct snd_soc_dapm_widget *w,
  struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 128:
  snd_soc_component_update_bits(component, CS42L51_POWER_CTL1,
        CS42L51_POWER_CTL1_PDN,
        CS42L51_POWER_CTL1_PDN);
  break;
 default:
 case 129:
  snd_soc_component_update_bits(component, CS42L51_POWER_CTL1,
        CS42L51_POWER_CTL1_PDN, 0);
  break;
 }

 return 0;
}
