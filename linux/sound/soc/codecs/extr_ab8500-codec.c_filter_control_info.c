
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int max; int min; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {TYPE_2__ value; int count; int type; } ;
struct filter_control {int max; int min; int count; } ;


 int SNDRV_CTL_ELEM_TYPE_INTEGER ;

__attribute__((used)) static int filter_control_info(struct snd_kcontrol *kcontrol,
   struct snd_ctl_elem_info *uinfo)
{
 struct filter_control *fc =
   (struct filter_control *)kcontrol->private_value;

 uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = fc->count;
 uinfo->value.integer.min = fc->min;
 uinfo->value.integer.max = fc->max;

 return 0;
}
