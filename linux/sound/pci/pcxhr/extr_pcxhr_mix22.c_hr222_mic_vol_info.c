
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int max; int min; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;


 int HR222_MICRO_CAPTURE_LEVEL_MAX ;
 int HR222_MICRO_CAPTURE_LEVEL_MIN ;
 int SNDRV_CTL_ELEM_TYPE_INTEGER ;

__attribute__((used)) static int hr222_mic_vol_info(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_info *uinfo)
{
 uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = 1;
 uinfo->value.integer.min = HR222_MICRO_CAPTURE_LEVEL_MIN;

 uinfo->value.integer.max = HR222_MICRO_CAPTURE_LEVEL_MAX;
 return 0;
}
