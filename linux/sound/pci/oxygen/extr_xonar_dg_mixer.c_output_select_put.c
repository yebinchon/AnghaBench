
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_4__ {unsigned int* item; } ;
struct TYPE_3__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct oxygen {int mutex; struct dg* model_data; } ;
struct dg {unsigned int output_sel; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int output_select_apply (struct oxygen*) ;
 int oxygen_update_dac_routing (struct oxygen*) ;

__attribute__((used)) static int output_select_put(struct snd_kcontrol *ctl,
        struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;
 struct dg *data = chip->model_data;
 unsigned int new = value->value.enumerated.item[0];
 int changed = 0;
 int ret;

 mutex_lock(&chip->mutex);
 if (data->output_sel != new) {
  data->output_sel = new;
  ret = output_select_apply(chip);
  changed = ret >= 0 ? 1 : ret;
  oxygen_update_dac_routing(chip);
 }
 mutex_unlock(&chip->mutex);

 return changed;
}
