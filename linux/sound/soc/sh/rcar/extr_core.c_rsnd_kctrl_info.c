
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_5__ {int max; scalar_t__ min; } ;
struct TYPE_4__ {int items; int item; int name; } ;
struct TYPE_6__ {TYPE_2__ integer; TYPE_1__ enumerated; } ;
struct snd_ctl_elem_info {int type; TYPE_3__ value; int count; } ;
struct rsnd_kctrl_cfg {int max; int size; int * texts; } ;


 int SNDRV_CTL_ELEM_TYPE_BOOLEAN ;
 int SNDRV_CTL_ELEM_TYPE_ENUMERATED ;
 int SNDRV_CTL_ELEM_TYPE_INTEGER ;
 struct rsnd_kctrl_cfg* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int rsnd_kctrl_info(struct snd_kcontrol *kctrl,
      struct snd_ctl_elem_info *uinfo)
{
 struct rsnd_kctrl_cfg *cfg = snd_kcontrol_chip(kctrl);

 if (cfg->texts) {
  uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
  uinfo->count = cfg->size;
  uinfo->value.enumerated.items = cfg->max;
  if (uinfo->value.enumerated.item >= cfg->max)
   uinfo->value.enumerated.item = cfg->max - 1;
  strlcpy(uinfo->value.enumerated.name,
   cfg->texts[uinfo->value.enumerated.item],
   sizeof(uinfo->value.enumerated.name));
 } else {
  uinfo->count = cfg->size;
  uinfo->value.integer.min = 0;
  uinfo->value.integer.max = cfg->max;
  uinfo->type = (cfg->max == 1) ?
   SNDRV_CTL_ELEM_TYPE_BOOLEAN :
   SNDRV_CTL_ELEM_TYPE_INTEGER;
 }

 return 0;
}
