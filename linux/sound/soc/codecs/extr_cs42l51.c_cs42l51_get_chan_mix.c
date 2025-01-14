
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int* item; } ;
struct TYPE_3__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;


 int CS42L51_PCM_MIXER ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int cs42l51_get_chan_mix(struct snd_kcontrol *kcontrol,
   struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 unsigned long value = snd_soc_component_read32(component, CS42L51_PCM_MIXER)&3;

 switch (value) {
 default:
 case 0:
  ucontrol->value.enumerated.item[0] = 0;
  break;

 case 1:
 case 2:
  ucontrol->value.enumerated.item[0] = 1;
  break;
 case 3:
  ucontrol->value.enumerated.item[0] = 2;
  break;
 }

 return 0;
}
