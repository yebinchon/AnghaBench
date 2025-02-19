
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
struct snd_ak4531 {int* regs; int reg_mutex; int (* write ) (struct snd_ak4531*,int,int) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_ak4531* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int stub1 (struct snd_ak4531*,int,int) ;
 int stub2 (struct snd_ak4531*,int,int) ;
 int stub3 (struct snd_ak4531*,int,int) ;

__attribute__((used)) static int snd_ak4531_put_double(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ak4531 *ak4531 = snd_kcontrol_chip(kcontrol);
 int left_reg = kcontrol->private_value & 0xff;
 int right_reg = (kcontrol->private_value >> 8) & 0xff;
 int left_shift = (kcontrol->private_value >> 16) & 0x07;
 int right_shift = (kcontrol->private_value >> 19) & 0x07;
 int mask = (kcontrol->private_value >> 24) & 0xff;
 int invert = (kcontrol->private_value >> 22) & 1;
 int change;
 int left, right;

 left = ucontrol->value.integer.value[0] & mask;
 right = ucontrol->value.integer.value[1] & mask;
 if (invert) {
  left = mask - left;
  right = mask - right;
 }
 left <<= left_shift;
 right <<= right_shift;
 mutex_lock(&ak4531->reg_mutex);
 if (left_reg == right_reg) {
  left = (ak4531->regs[left_reg] & ~((mask << left_shift) | (mask << right_shift))) | left | right;
  change = left != ak4531->regs[left_reg];
  ak4531->write(ak4531, left_reg, ak4531->regs[left_reg] = left);
 } else {
  left = (ak4531->regs[left_reg] & ~(mask << left_shift)) | left;
  right = (ak4531->regs[right_reg] & ~(mask << right_shift)) | right;
  change = left != ak4531->regs[left_reg] || right != ak4531->regs[right_reg];
  ak4531->write(ak4531, left_reg, ak4531->regs[left_reg] = left);
  ak4531->write(ak4531, right_reg, ak4531->regs[right_reg] = right);
 }
 mutex_unlock(&ak4531->reg_mutex);
 return change;
}
