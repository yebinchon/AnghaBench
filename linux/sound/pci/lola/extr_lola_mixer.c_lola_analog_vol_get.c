
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_7__ {int * value; } ;
struct TYPE_8__ {TYPE_3__ integer; } ;
struct snd_ctl_elem_value {TYPE_4__ value; } ;
struct lola {TYPE_2__* pin; } ;
struct TYPE_6__ {int num_pins; TYPE_1__* pins; } ;
struct TYPE_5__ {int cur_gain_step; } ;


 struct lola* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int lola_analog_vol_get(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 struct lola *chip = snd_kcontrol_chip(kcontrol);
 int dir = kcontrol->private_value;
 int i;

 for (i = 0; i < chip->pin[dir].num_pins; i++)
  ucontrol->value.integer.value[i] =
   chip->pin[dir].pins[i].cur_gain_step;
 return 0;
}
