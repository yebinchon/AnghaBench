
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_intelhad {int mutex; int eld; } ;
struct TYPE_3__ {int data; } ;
struct TYPE_4__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int HDMI_MAX_ELD_BYTES ;
 int memcpy (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_intelhad* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int had_ctl_eld_get(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_intelhad *intelhaddata = snd_kcontrol_chip(kcontrol);

 mutex_lock(&intelhaddata->mutex);
 memcpy(ucontrol->value.bytes.data, intelhaddata->eld,
        HDMI_MAX_ELD_BYTES);
 mutex_unlock(&intelhaddata->mutex);
 return 0;
}
