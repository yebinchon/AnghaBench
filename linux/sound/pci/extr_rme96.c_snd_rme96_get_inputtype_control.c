
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
struct rme96 {int rev; int lock; TYPE_1__* pci; } ;
struct TYPE_4__ {int device; } ;






 unsigned int RME96_INPUT_ANALOG ;
 unsigned int RME96_INPUT_XLR ;
 int snd_BUG () ;
 struct rme96* snd_kcontrol_chip (struct snd_kcontrol*) ;
 unsigned int snd_rme96_getinputtype (struct rme96*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
snd_rme96_get_inputtype_control(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct rme96 *rme96 = snd_kcontrol_chip(kcontrol);
 unsigned int items = 3;

 spin_lock_irq(&rme96->lock);
 ucontrol->value.enumerated.item[0] = snd_rme96_getinputtype(rme96);

 switch (rme96->pci->device) {
 case 131:
 case 130:
  items = 3;
  break;
 case 128:
  items = 4;
  break;
 case 129:
  if (rme96->rev > 4) {

   if (ucontrol->value.enumerated.item[0] == RME96_INPUT_ANALOG) {
    ucontrol->value.enumerated.item[0] = RME96_INPUT_XLR;
   }
   items = 4;
  } else {
   items = 5;
  }
  break;
 default:
  snd_BUG();
  break;
 }
 if (ucontrol->value.enumerated.item[0] >= items) {
  ucontrol->value.enumerated.item[0] = items - 1;
 }

 spin_unlock_irq(&rme96->lock);
 return 0;
}
