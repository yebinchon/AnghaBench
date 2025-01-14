
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_trident {unsigned char spdif_ctrl; int reg_lock; } ;
struct snd_kcontrol {unsigned char private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_trident* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_trident_spdif_control_get(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_trident *trident = snd_kcontrol_chip(kcontrol);
 unsigned char val;

 spin_lock_irq(&trident->reg_lock);
 val = trident->spdif_ctrl;
 ucontrol->value.integer.value[0] = val == kcontrol->private_value;
 spin_unlock_irq(&trident->reg_lock);
 return 0;
}
