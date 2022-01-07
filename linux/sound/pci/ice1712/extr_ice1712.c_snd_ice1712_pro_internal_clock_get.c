
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int reg_lock; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int ICEMT (struct snd_ice1712*,int ) ;
 int RATE ;
 int inb (int ) ;
 scalar_t__ is_spdif_master (struct snd_ice1712*) ;
 int snd_BUG () ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_ice1712_pro_internal_clock_get(struct snd_kcontrol *kcontrol,
           struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 static const unsigned char xlate[16] = {
  9, 6, 3, 1, 7, 4, 0, 12, 8, 5, 2, 11, 255, 255, 255, 10
 };
 unsigned char val;

 spin_lock_irq(&ice->reg_lock);
 if (is_spdif_master(ice)) {
  ucontrol->value.enumerated.item[0] = 13;
 } else {
  val = xlate[inb(ICEMT(ice, RATE)) & 15];
  if (val == 255) {
   snd_BUG();
   val = 0;
  }
  ucontrol->value.enumerated.item[0] = val;
 }
 spin_unlock_irq(&ice->reg_lock);
 return 0;
}
