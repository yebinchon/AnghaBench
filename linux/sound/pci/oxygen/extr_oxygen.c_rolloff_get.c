
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
struct oxygen {struct generic_data* model_data; } ;
struct generic_data {int** ak4396_regs; } ;


 size_t AK4396_CONTROL_2 ;
 int AK4396_SLOW ;

__attribute__((used)) static int rolloff_get(struct snd_kcontrol *ctl,
         struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;
 struct generic_data *data = chip->model_data;

 value->value.enumerated.item[0] =
  (data->ak4396_regs[0][AK4396_CONTROL_2] & AK4396_SLOW) != 0;
 return 0;
}
