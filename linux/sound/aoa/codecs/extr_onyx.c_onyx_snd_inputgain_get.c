
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct onyx {int mutex; } ;


 scalar_t__ INPUTGAIN_RANGE_SHIFT ;
 int ONYX_ADC_PGA_GAIN_MASK ;
 int ONYX_REG_ADC_CONTROL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int onyx_read_register (struct onyx*,int ,int*) ;
 struct onyx* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int onyx_snd_inputgain_get(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct onyx *onyx = snd_kcontrol_chip(kcontrol);
 u8 ig;

 mutex_lock(&onyx->mutex);
 onyx_read_register(onyx, ONYX_REG_ADC_CONTROL, &ig);
 mutex_unlock(&onyx->mutex);

 ucontrol->value.integer.value[0] =
  (ig & ONYX_ADC_PGA_GAIN_MASK) + INPUTGAIN_RANGE_SHIFT;

 return 0;
}
