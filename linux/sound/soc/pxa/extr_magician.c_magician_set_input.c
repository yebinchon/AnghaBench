
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EGPIO_MAGICIAN_IN_SEL1 ;


 int gpio_set_value (int ,int) ;
 int magician_in_sel ;

__attribute__((used)) static int magician_set_input(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 if (magician_in_sel == ucontrol->value.enumerated.item[0])
  return 0;

 magician_in_sel = ucontrol->value.enumerated.item[0];

 switch (magician_in_sel) {
 case 129:
  gpio_set_value(EGPIO_MAGICIAN_IN_SEL1, 1);
  break;
 case 128:
  gpio_set_value(EGPIO_MAGICIAN_IN_SEL1, 0);
 }

 return 1;
}
