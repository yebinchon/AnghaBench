
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int* item; } ;
struct TYPE_5__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct rme32 {int lock; TYPE_3__* pci; } ;
struct TYPE_6__ {int device; } ;





 int snd_BUG () ;
 struct rme32* snd_kcontrol_chip (struct snd_kcontrol*) ;
 scalar_t__ snd_rme32_getinputtype (struct rme32*) ;
 int snd_rme32_setinputtype (struct rme32*,unsigned int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
snd_rme32_put_inputtype_control(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct rme32 *rme32 = snd_kcontrol_chip(kcontrol);
 unsigned int val;
 int change, items = 3;

 switch (rme32->pci->device) {
 case 130:
 case 129:
  items = 3;
  break;
 case 128:
  items = 4;
  break;
 default:
  snd_BUG();
  break;
 }
 val = ucontrol->value.enumerated.item[0] % items;

 spin_lock_irq(&rme32->lock);
 change = val != (unsigned int)snd_rme32_getinputtype(rme32);
 snd_rme32_setinputtype(rme32, val);
 spin_unlock_irq(&rme32->lock);
 return change;
}
