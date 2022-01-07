
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct snd_kcontrol {int private_value; struct oxygen* private_data; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int reg_lock; } ;


 int OXYGEN_GPIO_DATA ;
 int XONAR_GPIO_BIT_INVERT ;
 int oxygen_read16 (struct oxygen*,int ) ;
 int oxygen_write16 (struct oxygen*,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int xonar_gpio_bit_switch_put(struct snd_kcontrol *ctl,
         struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;
 u16 bit = ctl->private_value;
 bool invert = ctl->private_value & XONAR_GPIO_BIT_INVERT;
 u16 old_bits, new_bits;
 int changed;

 spin_lock_irq(&chip->reg_lock);
 old_bits = oxygen_read16(chip, OXYGEN_GPIO_DATA);
 if (!!value->value.integer.value[0] ^ invert)
  new_bits = old_bits | bit;
 else
  new_bits = old_bits & ~bit;
 changed = new_bits != old_bits;
 if (changed)
  oxygen_write16(chip, OXYGEN_GPIO_DATA, new_bits);
 spin_unlock_irq(&chip->reg_lock);
 return changed;
}
