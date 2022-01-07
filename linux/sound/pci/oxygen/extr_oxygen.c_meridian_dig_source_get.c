
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int dummy; } ;


 int GPIO_MERIDIAN_DIG_EXT ;
 int OXYGEN_GPIO_DATA ;
 int oxygen_read16 (struct oxygen*,int ) ;

__attribute__((used)) static int meridian_dig_source_get(struct snd_kcontrol *ctl,
       struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;

 value->value.enumerated.item[0] =
  !!(oxygen_read16(chip, OXYGEN_GPIO_DATA) &
     GPIO_MERIDIAN_DIG_EXT);
 return 0;
}
