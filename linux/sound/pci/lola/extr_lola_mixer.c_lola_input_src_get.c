
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_5__ {int* value; } ;
struct TYPE_6__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct lola {int input_src_mask; TYPE_1__* pin; } ;
struct TYPE_4__ {int num_pins; } ;


 size_t CAPT ;
 struct lola* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int lola_input_src_get(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct lola *chip = snd_kcontrol_chip(kcontrol);
 int i;

 for (i = 0; i < chip->pin[CAPT].num_pins; i++)
  ucontrol->value.integer.value[i] =
   !!(chip->input_src_mask & (1 << i));
 return 0;
}
