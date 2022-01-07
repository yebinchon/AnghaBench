
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct emu10k1x {int dummy; } ;


 int SPDIF_SELECT ;
 int snd_emu10k1x_ptr_read (struct emu10k1x*,int ,int ) ;
 struct emu10k1x* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_emu10k1x_shared_spdif_get(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct emu10k1x *emu = snd_kcontrol_chip(kcontrol);

 ucontrol->value.integer.value[0] = (snd_emu10k1x_ptr_read(emu, SPDIF_SELECT, 0) == 0x700) ? 0 : 1;

 return 0;
}
