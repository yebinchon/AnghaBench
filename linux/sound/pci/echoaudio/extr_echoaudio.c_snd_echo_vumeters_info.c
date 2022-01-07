
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_6__ {int* d; } ;
struct TYPE_4__ {scalar_t__ max; int min; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_3__ dimen; TYPE_2__ value; int type; } ;


 int ECHOGAIN_MINOUT ;
 int SNDRV_CTL_ELEM_TYPE_INTEGER ;

__attribute__((used)) static int snd_echo_vumeters_info(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_info *uinfo)
{
 uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = 96;
 uinfo->value.integer.min = ECHOGAIN_MINOUT;
 uinfo->value.integer.max = 0;



 uinfo->dimen.d[0] = 2;

 uinfo->dimen.d[1] = 16;
 uinfo->dimen.d[2] = 2;
 return 0;
}
