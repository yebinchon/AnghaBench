
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_korg1212 {int* volumePhase; int lock; TYPE_3__* sharedBufferPtr; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {scalar_t__* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_6__ {int* volumeData; } ;


 int abs (int) ;
 struct snd_korg1212* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_korg1212_control_phase_put(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *u)
{
 struct snd_korg1212 *korg1212 = snd_kcontrol_chip(kcontrol);
        int change = 0;
        int i, val;

 spin_lock_irq(&korg1212->lock);

 i = kcontrol->private_value;

 korg1212->volumePhase[i] = !!u->value.integer.value[0];

 val = korg1212->sharedBufferPtr->volumeData[kcontrol->private_value];

 if ((u->value.integer.value[0] != 0) != (val < 0)) {
  val = abs(val) * (korg1212->volumePhase[i] > 0 ? -1 : 1);
  korg1212->sharedBufferPtr->volumeData[i] = val;
  change = 1;
 }

 if (i >= 8) {
  korg1212->volumePhase[i+1] = !!u->value.integer.value[1];

  val = korg1212->sharedBufferPtr->volumeData[kcontrol->private_value+1];

  if ((u->value.integer.value[1] != 0) != (val < 0)) {
   val = abs(val) * (korg1212->volumePhase[i+1] > 0 ? -1 : 1);
   korg1212->sharedBufferPtr->volumeData[i+1] = val;
   change = 1;
  }
 }

 spin_unlock_irq(&korg1212->lock);

        return change;
}
