
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 unsigned char CHAN_MIX_BOTH ;
 unsigned char CHAN_MIX_NORMAL ;
 unsigned char CHAN_MIX_SWAP ;
 int CS42L51_PCM_MIXER ;
 int snd_soc_component_write (struct snd_soc_component*,int ,unsigned char) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int cs42l51_set_chan_mix(struct snd_kcontrol *kcontrol,
   struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 unsigned char val;

 switch (ucontrol->value.enumerated.item[0]) {
 default:
 case 0:
  val = CHAN_MIX_NORMAL;
  break;
 case 1:
  val = CHAN_MIX_BOTH;
  break;
 case 2:
  val = CHAN_MIX_SWAP;
  break;
 }

 snd_soc_component_write(component, CS42L51_PCM_MIXER, val);

 return 1;
}
