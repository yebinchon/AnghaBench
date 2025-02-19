
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_trident {unsigned int musicvol_wavevol; int reg_lock; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int T4D_MUSICVOL_WAVEVOL ;
 int TRID_REG (struct snd_trident*,int ) ;
 int outl (unsigned int,int ) ;
 struct snd_trident* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_trident_vol_control_put(struct snd_kcontrol *kcontrol,
           struct snd_ctl_elem_value *ucontrol)
{
 struct snd_trident *trident = snd_kcontrol_chip(kcontrol);
 unsigned int val;
 int change = 0;

 spin_lock_irq(&trident->reg_lock);
 val = trident->musicvol_wavevol;
 val &= ~(0xffff << kcontrol->private_value);
 val |= ((255 - (ucontrol->value.integer.value[0] & 0xff)) |
         ((255 - (ucontrol->value.integer.value[1] & 0xff)) << 8)) << kcontrol->private_value;
 change = val != trident->musicvol_wavevol;
 outl(trident->musicvol_wavevol = val, TRID_REG(trident, T4D_MUSICVOL_WAVEVOL));
 spin_unlock_irq(&trident->reg_lock);
 return change;
}
