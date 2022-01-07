
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_kcontrol {int private_value; } ;
struct snd_emu10k1 {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int snd_emu10k1_ptr20_read (struct snd_emu10k1*,int,int) ;
 struct snd_emu10k1* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_p16v_volume_get(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
        struct snd_emu10k1 *emu = snd_kcontrol_chip(kcontrol);
 int high_low = (kcontrol->private_value >> 8) & 0xff;
 int reg = kcontrol->private_value & 0xff;
 u32 value;

 value = snd_emu10k1_ptr20_read(emu, reg, high_low);
 if (high_low) {
  ucontrol->value.integer.value[0] = 0xff - ((value >> 24) & 0xff);
  ucontrol->value.integer.value[1] = 0xff - ((value >> 16) & 0xff);
 } else {
  ucontrol->value.integer.value[0] = 0xff - ((value >> 8) & 0xff);
  ucontrol->value.integer.value[1] = 0xff - ((value >> 0) & 0xff);
 }
 return 0;
}
