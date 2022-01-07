
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct rme96 {unsigned int* vol; int lock; } ;


 int EINVAL ;
 unsigned int RME96_185X_MAX_OUT (struct rme96*) ;
 int RME96_HAS_ANALOG_OUT (struct rme96*) ;
 struct rme96* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_rme96_apply_dac_volume (struct rme96*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
snd_rme96_dac_volume_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *u)
{
 struct rme96 *rme96 = snd_kcontrol_chip(kcontrol);
        int change = 0;
 unsigned int vol, maxvol;


 if (!RME96_HAS_ANALOG_OUT(rme96))
  return -EINVAL;
 maxvol = RME96_185X_MAX_OUT(rme96);
 spin_lock_irq(&rme96->lock);
 vol = u->value.integer.value[0];
 if (vol != rme96->vol[0] && vol <= maxvol) {
  rme96->vol[0] = vol;
  change = 1;
 }
 vol = u->value.integer.value[1];
 if (vol != rme96->vol[1] && vol <= maxvol) {
  rme96->vol[1] = vol;
  change = 1;
 }
 if (change)
  snd_rme96_apply_dac_volume(rme96);
 spin_unlock_irq(&rme96->lock);

        return change;
}
