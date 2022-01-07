
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_opl3sa2 {int* ctlregs; int reg_lock; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_opl3sa2* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_opl3sa2_get_double(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_opl3sa2 *chip = snd_kcontrol_chip(kcontrol);
 unsigned long flags;
 int left_reg = kcontrol->private_value & 0xff;
 int right_reg = (kcontrol->private_value >> 8) & 0xff;
 int shift_left = (kcontrol->private_value >> 16) & 0x07;
 int shift_right = (kcontrol->private_value >> 19) & 0x07;
 int mask = (kcontrol->private_value >> 24) & 0xff;
 int invert = (kcontrol->private_value >> 22) & 1;

 spin_lock_irqsave(&chip->reg_lock, flags);
 ucontrol->value.integer.value[0] = (chip->ctlregs[left_reg] >> shift_left) & mask;
 ucontrol->value.integer.value[1] = (chip->ctlregs[right_reg] >> shift_right) & mask;
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 if (invert) {
  ucontrol->value.integer.value[0] = mask - ucontrol->value.integer.value[0];
  ucontrol->value.integer.value[1] = mask - ucontrol->value.integer.value[1];
 }
 return 0;
}
