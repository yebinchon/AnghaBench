
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {unsigned int private_value; } ;
struct TYPE_3__ {int max; scalar_t__ min; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;
struct maya_vol_info {int maxval; } ;


 int SNDRV_CTL_ELEM_TYPE_INTEGER ;
 struct maya_vol_info* vol_info ;

__attribute__((used)) static int maya_vol_info(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_info *uinfo)
{
 unsigned int idx = kcontrol->private_value;
 struct maya_vol_info *vol = &vol_info[idx];

 uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = 2;
 uinfo->value.integer.min = 0;
 uinfo->value.integer.max = vol->maxval;
 return 0;
}
