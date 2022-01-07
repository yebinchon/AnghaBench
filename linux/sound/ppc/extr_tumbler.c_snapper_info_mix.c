
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__ max; scalar_t__ min; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int SNDRV_CTL_ELEM_TYPE_INTEGER ;
 int mixer_volume_table ;

__attribute__((used)) static int snapper_info_mix(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_info *uinfo)
{
 uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = 2;
 uinfo->value.integer.min = 0;
 uinfo->value.integer.max = ARRAY_SIZE(mixer_volume_table) - 1;
 return 0;
}
