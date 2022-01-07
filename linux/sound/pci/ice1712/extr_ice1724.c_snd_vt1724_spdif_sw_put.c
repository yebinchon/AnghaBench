
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int reg_lock; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int ICEREG1724 (struct snd_ice1712*,int ) ;
 int SPDIF_CFG ;
 unsigned char VT1724_CFG_SPDIF_OUT_EN ;
 unsigned char inb (int ) ;
 int outb (unsigned char,int ) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_vt1724_spdif_sw_put(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned char old, val;

 spin_lock_irq(&ice->reg_lock);
 old = val = inb(ICEREG1724(ice, SPDIF_CFG));
 val &= ~VT1724_CFG_SPDIF_OUT_EN;
 if (ucontrol->value.integer.value[0])
  val |= VT1724_CFG_SPDIF_OUT_EN;
 if (old != val)
  outb(val, ICEREG1724(ice, SPDIF_CFG));
 spin_unlock_irq(&ice->reg_lock);
 return old != val;
}
