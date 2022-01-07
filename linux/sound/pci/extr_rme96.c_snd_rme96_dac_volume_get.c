
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
struct rme96 {int lock; int * vol; } ;


 struct rme96* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
snd_rme96_dac_volume_get(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *u)
{
 struct rme96 *rme96 = snd_kcontrol_chip(kcontrol);

 spin_lock_irq(&rme96->lock);
        u->value.integer.value[0] = rme96->vol[0];
        u->value.integer.value[1] = rme96->vol[1];
 spin_unlock_irq(&rme96->lock);

        return 0;
}
