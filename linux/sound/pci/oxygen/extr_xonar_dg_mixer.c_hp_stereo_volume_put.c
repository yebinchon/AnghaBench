
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_3__ {long* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int mutex; struct dg* model_data; } ;
struct dg {long* cs4245_shadow; } ;


 size_t CS4245_DAC_A_CTRL ;
 size_t CS4245_DAC_B_CTRL ;
 int EINVAL ;
 int cs4245_write_spi (struct oxygen*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hp_stereo_volume_put(struct snd_kcontrol *ctl,
    struct snd_ctl_elem_value *val)
{
 struct oxygen *chip = ctl->private_data;
 struct dg *data = chip->model_data;
 int ret;
 int changed = 0;
 long new1 = val->value.integer.value[0];
 long new2 = val->value.integer.value[1];

 if ((new1 > 255) || (new1 < 0) || (new2 > 255) || (new2 < 0))
  return -EINVAL;

 mutex_lock(&chip->mutex);
 if ((data->cs4245_shadow[CS4245_DAC_A_CTRL] != ~new1) ||
     (data->cs4245_shadow[CS4245_DAC_B_CTRL] != ~new2)) {
  data->cs4245_shadow[CS4245_DAC_A_CTRL] = ~new1;
  data->cs4245_shadow[CS4245_DAC_B_CTRL] = ~new2;
  ret = cs4245_write_spi(chip, CS4245_DAC_A_CTRL);
  if (ret >= 0)
   ret = cs4245_write_spi(chip, CS4245_DAC_B_CTRL);
  changed = ret >= 0 ? 1 : ret;
 }
 mutex_unlock(&chip->mutex);

 return changed;
}
