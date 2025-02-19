
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pmac {scalar_t__ model; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int max; scalar_t__ min; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;


 scalar_t__ PMAC_TUMBLER ;
 int SNDRV_CTL_ELEM_TYPE_INTEGER ;
 int TAS3001_DRC_MAX ;
 int TAS3004_DRC_MAX ;
 struct snd_pmac* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int tumbler_info_drc_value(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_info *uinfo)
{
 struct snd_pmac *chip = snd_kcontrol_chip(kcontrol);
 uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = 1;
 uinfo->value.integer.min = 0;
 uinfo->value.integer.max =
  chip->model == PMAC_TUMBLER ? TAS3001_DRC_MAX : TAS3004_DRC_MAX;
 return 0;
}
