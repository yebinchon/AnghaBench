
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int mutex; } ;


 int AC97_REC_GAIN ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int oxygen_read_ac97 (struct oxygen*,int,int ) ;
 int oxygen_write_ac97 (struct oxygen*,int,int ,int) ;

__attribute__((used)) static int ac97_fp_rec_volume_put(struct snd_kcontrol *ctl,
      struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;
 u16 oldreg, newreg;
 int change;

 mutex_lock(&chip->mutex);
 oldreg = oxygen_read_ac97(chip, 1, AC97_REC_GAIN);
 newreg = oldreg & ~0x0707;
 newreg = newreg | (value->value.integer.value[0] & 7);
 newreg = newreg | ((value->value.integer.value[0] & 7) << 8);
 change = newreg != oldreg;
 if (change)
  oxygen_write_ac97(chip, 1, AC97_REC_GAIN, newreg);
 mutex_unlock(&chip->mutex);
 return change;
}
