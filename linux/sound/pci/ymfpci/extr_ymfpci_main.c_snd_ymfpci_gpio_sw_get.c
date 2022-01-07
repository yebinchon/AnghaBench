
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_ymfpci {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_ymfpci* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_ymfpci_get_gpio_out (struct snd_ymfpci*,int) ;

__attribute__((used)) static int snd_ymfpci_gpio_sw_get(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ymfpci *chip = snd_kcontrol_chip(kcontrol);
 int pin = (int)kcontrol->private_value;
 ucontrol->value.integer.value[0] = snd_ymfpci_get_gpio_out(chip, pin);
 return 0;
}
