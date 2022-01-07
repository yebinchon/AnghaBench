
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sonicvibes {int reg_lock; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct sonicvibes* snd_kcontrol_chip (struct snd_kcontrol*) ;
 unsigned short snd_sonicvibes_in1 (struct sonicvibes*,int) ;
 int snd_sonicvibes_out1 (struct sonicvibes*,int,unsigned short) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_sonicvibes_put_single(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct sonicvibes *sonic = snd_kcontrol_chip(kcontrol);
 int reg = kcontrol->private_value & 0xff;
 int shift = (kcontrol->private_value >> 8) & 0xff;
 int mask = (kcontrol->private_value >> 16) & 0xff;
 int invert = (kcontrol->private_value >> 24) & 0xff;
 int change;
 unsigned short val, oval;

 val = (ucontrol->value.integer.value[0] & mask);
 if (invert)
  val = mask - val;
 val <<= shift;
 spin_lock_irq(&sonic->reg_lock);
 oval = snd_sonicvibes_in1(sonic, reg);
 val = (oval & ~(mask << shift)) | val;
 change = val != oval;
 snd_sonicvibes_out1(sonic, reg, val);
 spin_unlock_irq(&sonic->reg_lock);
 return change;
}
