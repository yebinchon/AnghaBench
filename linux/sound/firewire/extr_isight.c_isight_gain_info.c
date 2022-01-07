
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {struct isight* private_data; } ;
struct TYPE_3__ {int max; int min; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;
struct isight {int gain_max; int gain_min; } ;


 int SNDRV_CTL_ELEM_TYPE_INTEGER ;

__attribute__((used)) static int isight_gain_info(struct snd_kcontrol *ctl,
       struct snd_ctl_elem_info *info)
{
 struct isight *isight = ctl->private_data;

 info->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 info->count = 1;
 info->value.integer.min = isight->gain_min;
 info->value.integer.max = isight->gain_max;

 return 0;
}
