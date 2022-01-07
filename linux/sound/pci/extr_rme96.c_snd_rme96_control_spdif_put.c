
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {int iec958; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct rme96 {scalar_t__ wcreg_spdif; int lock; } ;


 struct rme96* snd_kcontrol_chip (struct snd_kcontrol*) ;
 scalar_t__ snd_rme96_convert_from_aes (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_rme96_control_spdif_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct rme96 *rme96 = snd_kcontrol_chip(kcontrol);
 int change;
 u32 val;

 val = snd_rme96_convert_from_aes(&ucontrol->value.iec958);
 spin_lock_irq(&rme96->lock);
 change = val != rme96->wcreg_spdif;
 rme96->wcreg_spdif = val;
 spin_unlock_irq(&rme96->lock);
 return change;
}
