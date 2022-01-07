
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct snd_ice1712 {int* pro_volumes; int reg_lock; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int id; } ;


 int snd_ctl_get_ioffidx (struct snd_kcontrol*,int *) ;
 int snd_ice1712_update_volume (struct snd_ice1712*,int) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_ice1712_pro_mixer_switch_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 int priv_idx = snd_ctl_get_ioffidx(kcontrol, &ucontrol->id) +
  kcontrol->private_value;
 unsigned int nval, change;

 nval = (ucontrol->value.integer.value[0] ? 0 : 0x00008000) |
        (ucontrol->value.integer.value[1] ? 0 : 0x80000000);
 spin_lock_irq(&ice->reg_lock);
 nval |= ice->pro_volumes[priv_idx] & ~0x80008000;
 change = nval != ice->pro_volumes[priv_idx];
 ice->pro_volumes[priv_idx] = nval;
 snd_ice1712_update_volume(ice, priv_idx);
 spin_unlock_irq(&ice->reg_lock);
 return change;
}
