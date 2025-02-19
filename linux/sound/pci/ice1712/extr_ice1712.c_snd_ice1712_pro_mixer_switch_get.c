
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct snd_ice1712 {int* pro_volumes; int reg_lock; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int id; } ;


 int snd_ctl_get_ioffidx (struct snd_kcontrol*,int *) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_ice1712_pro_mixer_switch_get(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 int priv_idx = snd_ctl_get_ioffidx(kcontrol, &ucontrol->id) +
  kcontrol->private_value;

 spin_lock_irq(&ice->reg_lock);
 ucontrol->value.integer.value[0] =
  !((ice->pro_volumes[priv_idx] >> 15) & 1);
 ucontrol->value.integer.value[1] =
  !((ice->pro_volumes[priv_idx] >> 31) & 1);
 spin_unlock_irq(&ice->reg_lock);
 return 0;
}
