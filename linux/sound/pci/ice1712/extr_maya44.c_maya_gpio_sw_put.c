
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_maya44 {int mutex; int ice; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 scalar_t__ GET_GPIO_VAL_INV (int ) ;
 unsigned int GET_GPIO_VAL_SHIFT (int ) ;
 int maya_set_gpio_bits (int ,unsigned int,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_maya44* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int maya_gpio_sw_put(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct snd_maya44 *chip = snd_kcontrol_chip(kcontrol);
 unsigned int shift = GET_GPIO_VAL_SHIFT(kcontrol->private_value);
 unsigned int val, mask;
 int changed;

 mutex_lock(&chip->mutex);
 mask = 1 << shift;
 val = ucontrol->value.integer.value[0];
 if (GET_GPIO_VAL_INV(kcontrol->private_value))
  val = !val;
 val = val ? mask : 0;
 changed = maya_set_gpio_bits(chip->ice, mask, val);
 mutex_unlock(&chip->mutex);
 return changed;
}
