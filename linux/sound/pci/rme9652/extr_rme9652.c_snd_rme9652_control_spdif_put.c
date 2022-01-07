
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct snd_rme9652 {scalar_t__ creg_spdif; int lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {int iec958; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;


 struct snd_rme9652* snd_kcontrol_chip (struct snd_kcontrol*) ;
 scalar_t__ snd_rme9652_convert_from_aes (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_rme9652_control_spdif_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_rme9652 *rme9652 = snd_kcontrol_chip(kcontrol);
 int change;
 u32 val;

 val = snd_rme9652_convert_from_aes(&ucontrol->value.iec958);
 spin_lock_irq(&rme9652->lock);
 change = val != rme9652->creg_spdif;
 rme9652->creg_spdif = val;
 spin_unlock_irq(&rme9652->lock);
 return change;
}
