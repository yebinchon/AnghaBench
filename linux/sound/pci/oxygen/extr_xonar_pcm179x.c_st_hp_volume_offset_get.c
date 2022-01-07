
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xonar_pcm179x {int hp_gain_offset; } ;
struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int mutex; struct xonar_pcm179x* model_data; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int st_hp_volume_offset_get(struct snd_kcontrol *ctl,
       struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;
 struct xonar_pcm179x *data = chip->model_data;

 mutex_lock(&chip->mutex);
 if (data->hp_gain_offset < 2*-12)
  value->value.enumerated.item[0] = 0;
 else if (data->hp_gain_offset < 2*-6)
  value->value.enumerated.item[0] = 1;
 else if (data->hp_gain_offset < 0)
  value->value.enumerated.item[0] = 2;
 else
  value->value.enumerated.item[0] = 3;
 mutex_unlock(&chip->mutex);
 return 0;
}
