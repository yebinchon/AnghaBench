
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct onyx {int mutex; } ;
typedef int s8 ;


 int ONYX_ADC_INPUT_MIC ;
 int ONYX_REG_ADC_CONTROL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int onyx_read_register (struct onyx*,int ,int*) ;
 struct onyx* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int onyx_snd_capture_source_get(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct onyx *onyx = snd_kcontrol_chip(kcontrol);
 s8 v;

 mutex_lock(&onyx->mutex);
 onyx_read_register(onyx, ONYX_REG_ADC_CONTROL, &v);
 mutex_unlock(&onyx->mutex);

 ucontrol->value.enumerated.item[0] = !!(v&ONYX_ADC_INPUT_MIC);

 return 0;
}
