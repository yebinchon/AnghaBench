
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_5__ {unsigned int* item; } ;
struct TYPE_6__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct rme32 {int lock; TYPE_1__* pci; } ;
struct TYPE_4__ {int device; } ;





 int snd_BUG () ;
 struct rme32* snd_kcontrol_chip (struct snd_kcontrol*) ;
 unsigned int snd_rme32_getinputtype (struct rme32*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
snd_rme32_get_inputtype_control(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct rme32 *rme32 = snd_kcontrol_chip(kcontrol);
 unsigned int items = 3;

 spin_lock_irq(&rme32->lock);
 ucontrol->value.enumerated.item[0] = snd_rme32_getinputtype(rme32);

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
 if (ucontrol->value.enumerated.item[0] >= items) {
  ucontrol->value.enumerated.item[0] = items - 1;
 }

 spin_unlock_irq(&rme32->lock);
 return 0;
}
