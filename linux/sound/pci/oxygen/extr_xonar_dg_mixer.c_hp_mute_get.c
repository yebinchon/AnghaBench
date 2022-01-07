
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
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hp_mute_get(struct snd_kcontrol *ctl,
   struct snd_ctl_elem_value *val)
{
 struct oxygen *chip = ctl->private_data;
 struct dg *data = chip->model_data;

 mutex_lock(&chip->mutex);
 val->value.integer.value[0] =
  !(data->cs4245_shadow[CS4245_DAC_CTRL_1] & CS4245_MUTE_DAC);
 mutex_unlock(&chip->mutex);
 return 0;
}
