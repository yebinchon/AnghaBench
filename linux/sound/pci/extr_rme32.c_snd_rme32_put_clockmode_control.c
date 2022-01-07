
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
struct rme32 {int lock; } ;


 struct rme32* snd_kcontrol_chip (struct snd_kcontrol*) ;
 scalar_t__ snd_rme32_getclockmode (struct rme32*) ;
 int snd_rme32_setclockmode (struct rme32*,unsigned int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
snd_rme32_put_clockmode_control(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct rme32 *rme32 = snd_kcontrol_chip(kcontrol);
 unsigned int val;
 int change;

 val = ucontrol->value.enumerated.item[0] % 3;
 spin_lock_irq(&rme32->lock);
 change = val != (unsigned int)snd_rme32_getclockmode(rme32);
 snd_rme32_setclockmode(rme32, val);
 spin_unlock_irq(&rme32->lock);
 return change;
}
