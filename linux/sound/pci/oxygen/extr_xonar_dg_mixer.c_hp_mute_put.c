
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int mutex; struct dg* model_data; } ;
struct dg {int* cs4245_shadow; } ;


 size_t CS4245_DAC_CTRL_1 ;
 int CS4245_MUTE_DAC ;
 int EINVAL ;
 int cs4245_write_spi (struct oxygen*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hp_mute_put(struct snd_kcontrol *ctl,
   struct snd_ctl_elem_value *val)
{
 struct oxygen *chip = ctl->private_data;
 struct dg *data = chip->model_data;
 int ret;
 int changed;

 if (val->value.integer.value[0] > 1)
  return -EINVAL;
 mutex_lock(&chip->mutex);
 data->cs4245_shadow[CS4245_DAC_CTRL_1] &= ~CS4245_MUTE_DAC;
 data->cs4245_shadow[CS4245_DAC_CTRL_1] |=
  (~val->value.integer.value[0] << 2) & CS4245_MUTE_DAC;
 ret = cs4245_write_spi(chip, CS4245_DAC_CTRL_1);
 changed = ret >= 0 ? 1 : ret;
 mutex_unlock(&chip->mutex);
 return changed;
}
