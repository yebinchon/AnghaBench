
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int reg_lock; } ;
struct TYPE_2__ {int iec958; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;


 int ICEMT1724 (struct snd_ice1712*,int ) ;
 int SPDIF_CTRL ;
 unsigned int encode_spdif_bits (int *) ;
 unsigned int inw (int ) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int update_spdif_bits (struct snd_ice1712*,unsigned int) ;

__attribute__((used)) static int snd_vt1724_spdif_default_put(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned int val, old;

 val = encode_spdif_bits(&ucontrol->value.iec958);
 spin_lock_irq(&ice->reg_lock);
 old = inw(ICEMT1724(ice, SPDIF_CTRL));
 if (val != old)
  update_spdif_bits(ice, val);
 spin_unlock_irq(&ice->reg_lock);
 return val != old;
}
