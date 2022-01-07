
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
 struct snd_at73c213* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_at73c213_stereo_get(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_at73c213 *chip = snd_kcontrol_chip(kcontrol);
 int left_reg = kcontrol->private_value & 0xff;
 int right_reg = (kcontrol->private_value >> 8) & 0xff;
 int shift_left = (kcontrol->private_value >> 16) & 0x07;
 int shift_right = (kcontrol->private_value >> 19) & 0x07;
 int mask = (kcontrol->private_value >> 24) & 0xff;
 int invert = (kcontrol->private_value >> 22) & 1;

 mutex_lock(&chip->mixer_lock);

 ucontrol->value.integer.value[0] =
  (chip->reg_image[left_reg] >> shift_left) & mask;
 ucontrol->value.integer.value[1] =
  (chip->reg_image[right_reg] >> shift_right) & mask;

 if (invert) {
  ucontrol->value.integer.value[0] =
   mask - ucontrol->value.integer.value[0];
  ucontrol->value.integer.value[1] =
   mask - ucontrol->value.integer.value[1];
 }

 mutex_unlock(&chip->mixer_lock);

 return 0;
}
