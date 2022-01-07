
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct onyx {int mutex; scalar_t__ analog_locked; } ;


 int EBUSY ;
 int ONYX_MUTE_LEFT ;
 int ONYX_MUTE_RIGHT ;
 int ONYX_REG_DAC_CONTROL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int onyx_read_register (struct onyx*,int ,int*) ;
 int onyx_write_register (struct onyx*,int ,int) ;
 struct onyx* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int onyx_snd_mute_put(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct onyx *onyx = snd_kcontrol_chip(kcontrol);
 u8 v = 0, c = 0;
 int err = -EBUSY;

 mutex_lock(&onyx->mutex);
 if (onyx->analog_locked)
  goto out_unlock;

 onyx_read_register(onyx, ONYX_REG_DAC_CONTROL, &v);
 c = v;
 c &= ~(ONYX_MUTE_RIGHT | ONYX_MUTE_LEFT);
 if (!ucontrol->value.integer.value[0])
  c |= ONYX_MUTE_LEFT;
 if (!ucontrol->value.integer.value[1])
  c |= ONYX_MUTE_RIGHT;
 err = onyx_write_register(onyx, ONYX_REG_DAC_CONTROL, c);

 out_unlock:
 mutex_unlock(&onyx->mutex);

 return !err ? (v != c) : err;
}
