
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
struct oxygen {int mutex; struct dg* model_data; } ;
struct dg {size_t input_sel; int ** input_vol; } ;


 int EINVAL ;
 int input_source_apply (struct oxygen*) ;
 int input_volume_apply (struct oxygen*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int input_sel_put(struct snd_kcontrol *ctl,
    struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;
 struct dg *data = chip->model_data;
 int changed;
 int ret;

 if (value->value.enumerated.item[0] > 3)
  return -EINVAL;

 mutex_lock(&chip->mutex);
 changed = value->value.enumerated.item[0] != data->input_sel;
 if (changed) {
  data->input_sel = value->value.enumerated.item[0];

  ret = input_source_apply(chip);
  if (ret >= 0)
   ret = input_volume_apply(chip,
    data->input_vol[data->input_sel][0],
    data->input_vol[data->input_sel][1]);
  changed = ret >= 0 ? 1 : ret;
 }
 mutex_unlock(&chip->mutex);
 return changed;
}
