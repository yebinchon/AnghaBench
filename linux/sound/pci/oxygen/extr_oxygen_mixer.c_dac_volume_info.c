
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_4__ {int max; int min; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {TYPE_2__ value; int count; int type; } ;
struct TYPE_6__ {int dac_volume_max; int dac_volume_min; int dac_channels_mixer; } ;
struct oxygen {TYPE_3__ model; } ;


 int SNDRV_CTL_ELEM_TYPE_INTEGER ;

__attribute__((used)) static int dac_volume_info(struct snd_kcontrol *ctl,
      struct snd_ctl_elem_info *info)
{
 struct oxygen *chip = ctl->private_data;

 info->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 info->count = chip->model.dac_channels_mixer;
 info->value.integer.min = chip->model.dac_volume_min;
 info->value.integer.max = chip->model.dac_volume_max;
 return 0;
}
