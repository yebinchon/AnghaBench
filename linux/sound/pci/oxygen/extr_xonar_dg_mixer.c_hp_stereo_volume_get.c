
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int mutex; struct dg* model_data; } ;
struct dg {int* cs4245_shadow; } ;


 size_t CS4245_DAC_A_CTRL ;
 size_t CS4245_DAC_B_CTRL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hp_stereo_volume_get(struct snd_kcontrol *ctl,
    struct snd_ctl_elem_value *val)
{
 struct oxygen *chip = ctl->private_data;
 struct dg *data = chip->model_data;
 unsigned int tmp;

 mutex_lock(&chip->mutex);
 tmp = (~data->cs4245_shadow[CS4245_DAC_A_CTRL]) & 255;
 val->value.integer.value[0] = tmp;
 tmp = (~data->cs4245_shadow[CS4245_DAC_B_CTRL]) & 255;
 val->value.integer.value[1] = tmp;
 mutex_unlock(&chip->mutex);
 return 0;
}
