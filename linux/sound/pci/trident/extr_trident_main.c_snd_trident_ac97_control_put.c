
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_trident {unsigned char ac97_ctrl; int reg_lock; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int NX_ACR0_AC97_COM_STAT ;
 int TRID_REG (struct snd_trident*,int ) ;
 unsigned char inl (int ) ;
 int outl (unsigned char,int ) ;
 struct snd_trident* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_trident_ac97_control_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_trident *trident = snd_kcontrol_chip(kcontrol);
 unsigned char val;
 int change = 0;

 spin_lock_irq(&trident->reg_lock);
 val = trident->ac97_ctrl = inl(TRID_REG(trident, NX_ACR0_AC97_COM_STAT));
 val &= ~(1 << kcontrol->private_value);
 if (ucontrol->value.integer.value[0])
  val |= 1 << kcontrol->private_value;
 change = val != trident->ac97_ctrl;
 trident->ac97_ctrl = val;
 outl(trident->ac97_ctrl = val, TRID_REG(trident, NX_ACR0_AC97_COM_STAT));
 spin_unlock_irq(&trident->reg_lock);
 return change;
}
