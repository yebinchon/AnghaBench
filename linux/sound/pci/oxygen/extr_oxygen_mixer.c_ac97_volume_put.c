
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct snd_kcontrol {int private_value; struct oxygen* private_data; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int oxygen_read_ac97 (struct oxygen*,unsigned int,unsigned int) ;
 int oxygen_write_ac97 (struct oxygen*,unsigned int,unsigned int,int) ;

__attribute__((used)) static int ac97_volume_put(struct snd_kcontrol *ctl,
      struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;
 unsigned int codec = (ctl->private_value >> 24) & 1;
 int stereo = (ctl->private_value >> 16) & 1;
 unsigned int index = ctl->private_value & 0xff;
 u16 oldreg, newreg;
 int change;

 mutex_lock(&chip->mutex);
 oldreg = oxygen_read_ac97(chip, codec, index);
 if (!stereo) {
  newreg = oldreg & ~0x1f;
  newreg |= 31 - (value->value.integer.value[0] & 0x1f);
 } else {
  newreg = oldreg & ~0x1f1f;
  newreg |= (31 - (value->value.integer.value[0] & 0x1f)) << 8;
  newreg |= 31 - (value->value.integer.value[1] & 0x1f);
 }
 change = newreg != oldreg;
 if (change)
  oxygen_write_ac97(chip, codec, index, newreg);
 mutex_unlock(&chip->mutex);
 return change;
}
