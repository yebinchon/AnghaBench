
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {long* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct fm801 {int reg_lock; } ;


 int fm801_ioread16 (struct fm801*,int) ;
 struct fm801* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_fm801_get_double(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct fm801 *chip = snd_kcontrol_chip(kcontrol);
        int reg = kcontrol->private_value & 0xff;
 int shift_left = (kcontrol->private_value >> 8) & 0x0f;
 int shift_right = (kcontrol->private_value >> 12) & 0x0f;
 int mask = (kcontrol->private_value >> 16) & 0xff;
 int invert = (kcontrol->private_value >> 24) & 0xff;
 long *value = ucontrol->value.integer.value;

 spin_lock_irq(&chip->reg_lock);
 value[0] = (fm801_ioread16(chip, reg) >> shift_left) & mask;
 value[1] = (fm801_ioread16(chip, reg) >> shift_right) & mask;
 spin_unlock_irq(&chip->reg_lock);
 if (invert) {
  value[0] = mask - value[0];
  value[1] = mask - value[1];
 }
 return 0;
}
