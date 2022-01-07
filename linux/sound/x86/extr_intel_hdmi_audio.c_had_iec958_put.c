
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_intelhad {unsigned int aes_bits; int mutex; } ;
struct TYPE_3__ {int* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_intelhad* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int had_iec958_put(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 unsigned int val;
 struct snd_intelhad *intelhaddata = snd_kcontrol_chip(kcontrol);
 int changed = 0;

 val = (ucontrol->value.iec958.status[0] << 0) |
  (ucontrol->value.iec958.status[1] << 8) |
  (ucontrol->value.iec958.status[2] << 16) |
  (ucontrol->value.iec958.status[3] << 24);
 mutex_lock(&intelhaddata->mutex);
 if (intelhaddata->aes_bits != val) {
  intelhaddata->aes_bits = val;
  changed = 1;
 }
 mutex_unlock(&intelhaddata->mutex);
 return changed;
}
