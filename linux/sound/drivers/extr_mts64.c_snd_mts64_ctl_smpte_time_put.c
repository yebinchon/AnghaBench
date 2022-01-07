
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
struct mts64 {unsigned int* time; int lock; } ;


 struct mts64* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_mts64_ctl_smpte_time_put(struct snd_kcontrol *kctl,
     struct snd_ctl_elem_value *uctl)
{
 struct mts64 *mts = snd_kcontrol_chip(kctl);
 int idx = kctl->private_value;
 unsigned int time = uctl->value.integer.value[0] % 60;
 int changed = 0;

 spin_lock_irq(&mts->lock);
 if (mts->time[idx] != time) {
  changed = 1;
  mts->time[idx] = time;
 }
 spin_unlock_irq(&mts->lock);

 return changed;
}
