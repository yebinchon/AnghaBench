
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
struct snd_at73c213 {int* reg_image; int mixer_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_at73c213_write_reg (struct snd_at73c213*,int,unsigned short) ;
 struct snd_at73c213* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_at73c213_stereo_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_at73c213 *chip = snd_kcontrol_chip(kcontrol);
 int left_reg = kcontrol->private_value & 0xff;
 int right_reg = (kcontrol->private_value >> 8) & 0xff;
 int shift_left = (kcontrol->private_value >> 16) & 0x07;
 int shift_right = (kcontrol->private_value >> 19) & 0x07;
 int mask = (kcontrol->private_value >> 24) & 0xff;
 int invert = (kcontrol->private_value >> 22) & 1;
 int change, retval;
 unsigned short val1, val2;

 val1 = ucontrol->value.integer.value[0] & mask;
 val2 = ucontrol->value.integer.value[1] & mask;
 if (invert) {
  val1 = mask - val1;
  val2 = mask - val2;
 }
 val1 <<= shift_left;
 val2 <<= shift_right;

 mutex_lock(&chip->mixer_lock);

 val1 = (chip->reg_image[left_reg] & ~(mask << shift_left)) | val1;
 val2 = (chip->reg_image[right_reg] & ~(mask << shift_right)) | val2;
 change = val1 != chip->reg_image[left_reg]
  || val2 != chip->reg_image[right_reg];
 retval = snd_at73c213_write_reg(chip, left_reg, val1);
 if (retval) {
  mutex_unlock(&chip->mixer_lock);
  goto out;
 }
 retval = snd_at73c213_write_reg(chip, right_reg, val2);
 if (retval) {
  mutex_unlock(&chip->mixer_lock);
  goto out;
 }

 mutex_unlock(&chip->mixer_lock);

 return change;

out:
 return retval;
}
