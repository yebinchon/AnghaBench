
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {unsigned int private_value; struct oxygen* private_data; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int mutex; struct dg* model_data; } ;
struct dg {int** input_vol; unsigned int input_sel; } ;


 int EINVAL ;
 int input_volume_apply (struct oxygen*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int input_vol_put(struct snd_kcontrol *ctl,
    struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;
 struct dg *data = chip->model_data;
 unsigned int idx = ctl->private_value;
 int changed = 0;
 int ret = 0;

 if (value->value.integer.value[0] < 2 * -12 ||
     value->value.integer.value[0] > 2 * 12 ||
     value->value.integer.value[1] < 2 * -12 ||
     value->value.integer.value[1] > 2 * 12)
  return -EINVAL;
 mutex_lock(&chip->mutex);
 changed = data->input_vol[idx][0] != value->value.integer.value[0] ||
    data->input_vol[idx][1] != value->value.integer.value[1];
 if (changed) {
  data->input_vol[idx][0] = value->value.integer.value[0];
  data->input_vol[idx][1] = value->value.integer.value[1];
  if (idx == data->input_sel) {
   ret = input_volume_apply(chip,
    data->input_vol[idx][0],
    data->input_vol[idx][1]);
  }
  changed = ret >= 0 ? 1 : ret;
 }
 mutex_unlock(&chip->mutex);
 return changed;
}
