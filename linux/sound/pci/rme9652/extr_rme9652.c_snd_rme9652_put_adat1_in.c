
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_rme9652 {int lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EBUSY ;
 unsigned int rme9652_adat1_in (struct snd_rme9652*) ;
 int rme9652_set_adat1_input (struct snd_rme9652*,unsigned int) ;
 struct snd_rme9652* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_rme9652_use_is_exclusive (struct snd_rme9652*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_rme9652_put_adat1_in(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_rme9652 *rme9652 = snd_kcontrol_chip(kcontrol);
 int change;
 unsigned int val;

 if (!snd_rme9652_use_is_exclusive(rme9652))
  return -EBUSY;
 val = ucontrol->value.enumerated.item[0] % 2;
 spin_lock_irq(&rme9652->lock);
 change = val != rme9652_adat1_in(rme9652);
 if (change)
  rme9652_set_adat1_input(rme9652, val);
 spin_unlock_irq(&rme9652->lock);
 return change;
}
