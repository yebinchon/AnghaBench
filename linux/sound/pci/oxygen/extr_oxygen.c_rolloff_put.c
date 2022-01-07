
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_3__ {scalar_t__* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int mutex; struct generic_data* model_data; } ;
struct generic_data {unsigned int dacs; int ** ak4396_regs; } ;


 size_t AK4396_CONTROL_2 ;
 int AK4396_SLOW ;
 int ak4396_write (struct oxygen*,unsigned int,size_t,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int rolloff_put(struct snd_kcontrol *ctl,
         struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;
 struct generic_data *data = chip->model_data;
 unsigned int i;
 int changed;
 u8 reg;

 mutex_lock(&chip->mutex);
 reg = data->ak4396_regs[0][AK4396_CONTROL_2];
 if (value->value.enumerated.item[0])
  reg |= AK4396_SLOW;
 else
  reg &= ~AK4396_SLOW;
 changed = reg != data->ak4396_regs[0][AK4396_CONTROL_2];
 if (changed) {
  for (i = 0; i < data->dacs; ++i)
   ak4396_write(chip, i, AK4396_CONTROL_2, reg);
 }
 mutex_unlock(&chip->mutex);
 return changed;
}
