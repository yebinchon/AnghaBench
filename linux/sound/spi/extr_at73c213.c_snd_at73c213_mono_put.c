
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

__attribute__((used)) static int snd_at73c213_mono_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_at73c213 *chip = snd_kcontrol_chip(kcontrol);
 int reg = kcontrol->private_value & 0xff;
 int shift = (kcontrol->private_value >> 8) & 0xff;
 int mask = (kcontrol->private_value >> 16) & 0xff;
 int invert = (kcontrol->private_value >> 24) & 0xff;
 int change, retval;
 unsigned short val;

 val = (ucontrol->value.integer.value[0] & mask);
 if (invert)
  val = mask - val;
 val <<= shift;

 mutex_lock(&chip->mixer_lock);

 val = (chip->reg_image[reg] & ~(mask << shift)) | val;
 change = val != chip->reg_image[reg];
 retval = snd_at73c213_write_reg(chip, reg, val);

 mutex_unlock(&chip->mixer_lock);

 if (retval)
  return retval;

 return change;
}
