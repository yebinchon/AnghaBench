
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_wss {int* eimage; int reg_lock; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 size_t CS4236_REG (int) ;
 int snd_cs4236_ext_out (struct snd_wss*,int,unsigned short) ;
 struct snd_wss* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_cs4236_put_double(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_wss *chip = snd_kcontrol_chip(kcontrol);
 unsigned long flags;
 int left_reg = kcontrol->private_value & 0xff;
 int right_reg = (kcontrol->private_value >> 8) & 0xff;
 int shift_left = (kcontrol->private_value >> 16) & 0x07;
 int shift_right = (kcontrol->private_value >> 19) & 0x07;
 int mask = (kcontrol->private_value >> 24) & 0xff;
 int invert = (kcontrol->private_value >> 22) & 1;
 int change;
 unsigned short val1, val2;

 val1 = ucontrol->value.integer.value[0] & mask;
 val2 = ucontrol->value.integer.value[1] & mask;
 if (invert) {
  val1 = mask - val1;
  val2 = mask - val2;
 }
 val1 <<= shift_left;
 val2 <<= shift_right;
 spin_lock_irqsave(&chip->reg_lock, flags);
 if (left_reg != right_reg) {
  val1 = (chip->eimage[CS4236_REG(left_reg)] & ~(mask << shift_left)) | val1;
  val2 = (chip->eimage[CS4236_REG(right_reg)] & ~(mask << shift_right)) | val2;
  change = val1 != chip->eimage[CS4236_REG(left_reg)] || val2 != chip->eimage[CS4236_REG(right_reg)];
  snd_cs4236_ext_out(chip, left_reg, val1);
  snd_cs4236_ext_out(chip, right_reg, val2);
 } else {
  val1 = (chip->eimage[CS4236_REG(left_reg)] & ~((mask << shift_left) | (mask << shift_right))) | val1 | val2;
  change = val1 != chip->eimage[CS4236_REG(left_reg)];
  snd_cs4236_ext_out(chip, left_reg, val1);
 }
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 return change;
}
