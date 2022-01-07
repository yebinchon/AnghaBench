
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int cs8403_bits; } ;
struct snd_ice1712 {int reg_lock; int * playback_pro_substream; TYPE_2__ spdif; } ;
struct TYPE_3__ {int iec958; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;


 unsigned int snd_cs8403_encode_spdif_bits (int *) ;
 int snd_ice1712_delta_cs8403_spdif_write (struct snd_ice1712*,unsigned int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int delta_spdif_default_put(struct snd_ice1712 *ice, struct snd_ctl_elem_value *ucontrol)
{
 unsigned int val;
 int change;

 val = snd_cs8403_encode_spdif_bits(&ucontrol->value.iec958);
 spin_lock_irq(&ice->reg_lock);
 change = ice->spdif.cs8403_bits != val;
 ice->spdif.cs8403_bits = val;
 if (change && ice->playback_pro_substream == ((void*)0)) {
  spin_unlock_irq(&ice->reg_lock);
  snd_ice1712_delta_cs8403_spdif_write(ice, val);
 } else {
  spin_unlock_irq(&ice->reg_lock);
 }
 return change;
}
