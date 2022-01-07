
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct ensoniq {int cssr; int reg_lock; } ;


 int ES_1373_REAR_BIT24 ;
 int ES_1373_REAR_BIT26 ;
 int ES_1373_REAR_BIT27 ;
 struct ensoniq* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_es1373_rear_get(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 struct ensoniq *ensoniq = snd_kcontrol_chip(kcontrol);
 int val = 0;

 spin_lock_irq(&ensoniq->reg_lock);
 if ((ensoniq->cssr & (ES_1373_REAR_BIT27|ES_1373_REAR_BIT26|
         ES_1373_REAR_BIT24)) == ES_1373_REAR_BIT26)
      val = 1;
 ucontrol->value.integer.value[0] = val;
 spin_unlock_irq(&ensoniq->reg_lock);
 return 0;
}
