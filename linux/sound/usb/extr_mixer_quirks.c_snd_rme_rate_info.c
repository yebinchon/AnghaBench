
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {int min; int max; scalar_t__ step; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_1__ value; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_INTEGER ;




__attribute__((used)) static int snd_rme_rate_info(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_info *uinfo)
{
 uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = 1;
 switch (kcontrol->private_value) {
 case 128:
  uinfo->value.integer.min = 32000;
  uinfo->value.integer.max = 800000;
  break;
 case 130:
 case 129:
 default:
  uinfo->value.integer.min = 0;
  uinfo->value.integer.max = 200000;
 }
 uinfo->value.integer.step = 0;
 return 0;
}
