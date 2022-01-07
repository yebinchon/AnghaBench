
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sst_enum {int max; int * texts; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int items; int item; int name; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_ENUMERATED ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int sst_slot_enum_info(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_info *uinfo)
{
 struct sst_enum *e = (struct sst_enum *)kcontrol->private_value;

 uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
 uinfo->count = 1;
 uinfo->value.enumerated.items = e->max;

 if (uinfo->value.enumerated.item > e->max - 1)
  uinfo->value.enumerated.item = e->max - 1;
 strcpy(uinfo->value.enumerated.name,
  e->texts[uinfo->value.enumerated.item]);

 return 0;
}
