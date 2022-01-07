
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_korg1212 {int lock; TYPE_3__* sharedBufferPtr; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {int * item; } ;
struct TYPE_5__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_6__ {int * routeData; } ;


 struct snd_korg1212* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_korg1212_control_route_get(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *u)
{
 struct snd_korg1212 *korg1212 = snd_kcontrol_chip(kcontrol);
        int i;

 spin_lock_irq(&korg1212->lock);

 i = kcontrol->private_value;
 u->value.enumerated.item[0] = korg1212->sharedBufferPtr->routeData[i];

 if (i >= 8)
  u->value.enumerated.item[1] = korg1212->sharedBufferPtr->routeData[i+1];

        spin_unlock_irq(&korg1212->lock);

        return 0;
}
