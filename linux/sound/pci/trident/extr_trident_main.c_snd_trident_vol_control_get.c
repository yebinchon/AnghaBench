
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_trident {unsigned int musicvol_wavevol; } ;
struct snd_kcontrol {unsigned int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_trident* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_trident_vol_control_get(struct snd_kcontrol *kcontrol,
           struct snd_ctl_elem_value *ucontrol)
{
 struct snd_trident *trident = snd_kcontrol_chip(kcontrol);
 unsigned int val;

 val = trident->musicvol_wavevol;
 ucontrol->value.integer.value[0] = 255 - ((val >> kcontrol->private_value) & 0xff);
 ucontrol->value.integer.value[1] = 255 - ((val >> (kcontrol->private_value + 8)) & 0xff);
 return 0;
}
