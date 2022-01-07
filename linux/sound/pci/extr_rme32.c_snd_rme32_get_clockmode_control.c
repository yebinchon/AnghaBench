
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct rme32 {int lock; } ;


 struct rme32* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_rme32_getclockmode (struct rme32*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
snd_rme32_get_clockmode_control(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct rme32 *rme32 = snd_kcontrol_chip(kcontrol);

 spin_lock_irq(&rme32->lock);
 ucontrol->value.enumerated.item[0] = snd_rme32_getclockmode(rme32);
 spin_unlock_irq(&rme32->lock);
 return 0;
}
