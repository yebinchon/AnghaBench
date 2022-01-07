
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct mts64 {int lock; int smpte_switch; } ;


 struct mts64* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_mts64_ctl_smpte_switch_get(struct snd_kcontrol* kctl,
       struct snd_ctl_elem_value *uctl)
{
 struct mts64 *mts = snd_kcontrol_chip(kctl);

 spin_lock_irq(&mts->lock);
 uctl->value.integer.value[0] = mts->smpte_switch;
 spin_unlock_irq(&mts->lock);

 return 0;
}
