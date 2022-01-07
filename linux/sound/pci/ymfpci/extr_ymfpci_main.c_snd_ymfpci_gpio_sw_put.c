
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_ymfpci {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_ymfpci* snd_kcontrol_chip (struct snd_kcontrol*) ;
 scalar_t__ snd_ymfpci_get_gpio_out (struct snd_ymfpci*,int) ;
 int snd_ymfpci_set_gpio_out (struct snd_ymfpci*,int,int) ;

__attribute__((used)) static int snd_ymfpci_gpio_sw_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ymfpci *chip = snd_kcontrol_chip(kcontrol);
 int pin = (int)kcontrol->private_value;

 if (snd_ymfpci_get_gpio_out(chip, pin) != ucontrol->value.integer.value[0]) {
  snd_ymfpci_set_gpio_out(chip, pin, !!ucontrol->value.integer.value[0]);
  ucontrol->value.integer.value[0] = snd_ymfpci_get_gpio_out(chip, pin);
  return 1;
 }
 return 0;
}
