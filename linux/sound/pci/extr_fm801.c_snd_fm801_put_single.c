
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct fm801 {int dummy; } ;


 int snd_fm801_update_bits (struct fm801*,int,int,unsigned short) ;
 struct fm801* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_fm801_put_single(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct fm801 *chip = snd_kcontrol_chip(kcontrol);
 int reg = kcontrol->private_value & 0xff;
 int shift = (kcontrol->private_value >> 8) & 0xff;
 int mask = (kcontrol->private_value >> 16) & 0xff;
 int invert = (kcontrol->private_value >> 24) & 0xff;
 unsigned short val;

 val = (ucontrol->value.integer.value[0] & mask);
 if (invert)
  val = mask - val;
 return snd_fm801_update_bits(chip, reg, mask << shift, val << shift);
}
