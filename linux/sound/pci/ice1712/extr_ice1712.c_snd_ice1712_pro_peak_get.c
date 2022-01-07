
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int reg_lock; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int ICEMT (struct snd_ice1712*,int ) ;
 int MONITOR_PEAKDATA ;
 int MONITOR_PEAKINDEX ;
 int inb (int ) ;
 int outb (int,int ) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_ice1712_pro_peak_get(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 int idx;

 spin_lock_irq(&ice->reg_lock);
 for (idx = 0; idx < 22; idx++) {
  outb(idx, ICEMT(ice, MONITOR_PEAKINDEX));
  ucontrol->value.integer.value[idx] = inb(ICEMT(ice, MONITOR_PEAKDATA));
 }
 spin_unlock_irq(&ice->reg_lock);
 return 0;
}
