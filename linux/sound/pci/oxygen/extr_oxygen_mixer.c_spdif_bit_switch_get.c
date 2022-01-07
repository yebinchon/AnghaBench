
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_kcontrol {int private_value; struct oxygen* private_data; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int dummy; } ;


 int OXYGEN_SPDIF_CONTROL ;
 int oxygen_read32 (struct oxygen*,int ) ;

__attribute__((used)) static int spdif_bit_switch_get(struct snd_kcontrol *ctl,
    struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;
 u32 bit = ctl->private_value;

 value->value.integer.value[0] =
  !!(oxygen_read32(chip, OXYGEN_SPDIF_CONTROL) & bit);
 return 0;
}
