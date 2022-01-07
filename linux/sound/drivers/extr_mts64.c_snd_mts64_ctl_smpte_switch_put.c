
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int * value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct mts64 {int smpte_switch; int lock; TYPE_3__* pardev; int fps; int * time; } ;
struct TYPE_6__ {int port; } ;


 int mts64_smpte_start (int ,int ,int ,int ,int ,int ) ;
 int mts64_smpte_stop (int ) ;
 struct mts64* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_mts64_ctl_smpte_switch_put(struct snd_kcontrol* kctl,
       struct snd_ctl_elem_value *uctl)
{
 struct mts64 *mts = snd_kcontrol_chip(kctl);
 int changed = 0;
 int val = !!uctl->value.integer.value[0];

 spin_lock_irq(&mts->lock);
 if (mts->smpte_switch == val)
  goto __out;

 changed = 1;
 mts->smpte_switch = val;
 if (mts->smpte_switch) {
  mts64_smpte_start(mts->pardev->port,
      mts->time[0], mts->time[1],
      mts->time[2], mts->time[3],
      mts->fps);
 } else {
  mts64_smpte_stop(mts->pardev->port);
 }
__out:
 spin_unlock_irq(&mts->lock);
 return changed;
}
