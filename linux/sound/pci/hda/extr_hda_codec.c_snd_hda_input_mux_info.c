
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned int items; unsigned int item; int name; } ;
struct TYPE_4__ {TYPE_3__ enumerated; } ;
struct snd_ctl_elem_info {int count; TYPE_1__ value; int type; } ;
struct hda_input_mux {unsigned int num_items; TYPE_2__* items; } ;
struct TYPE_5__ {int label; } ;


 int SNDRV_CTL_ELEM_TYPE_ENUMERATED ;
 int strcpy (int ,int ) ;

int snd_hda_input_mux_info(const struct hda_input_mux *imux,
      struct snd_ctl_elem_info *uinfo)
{
 unsigned int index;

 uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
 uinfo->count = 1;
 uinfo->value.enumerated.items = imux->num_items;
 if (!imux->num_items)
  return 0;
 index = uinfo->value.enumerated.item;
 if (index >= imux->num_items)
  index = imux->num_items - 1;
 strcpy(uinfo->value.enumerated.name, imux->items[index].label);
 return 0;
}
