
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int max; scalar_t__ min; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;
struct rme96 {int dummy; } ;


 int RME96_185X_MAX_OUT (struct rme96*) ;
 int SNDRV_CTL_ELEM_TYPE_INTEGER ;
 struct rme96* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int
snd_rme96_dac_volume_info(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_info *uinfo)
{
 struct rme96 *rme96 = snd_kcontrol_chip(kcontrol);

        uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
        uinfo->count = 2;
        uinfo->value.integer.min = 0;
 uinfo->value.integer.max = RME96_185X_MAX_OUT(rme96);
        return 0;
}
