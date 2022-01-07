
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int* item; } ;
struct TYPE_6__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct hda_input_mux {unsigned int num_items; TYPE_1__* items; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;
struct TYPE_4__ {int index; } ;


 int AC_VERB_SET_CONNECT_SEL ;
 int snd_hda_codec_write_cache (struct hda_codec*,int ,int ,int ,int ) ;

int snd_hda_input_mux_put(struct hda_codec *codec,
     const struct hda_input_mux *imux,
     struct snd_ctl_elem_value *ucontrol,
     hda_nid_t nid,
     unsigned int *cur_val)
{
 unsigned int idx;

 if (!imux->num_items)
  return 0;
 idx = ucontrol->value.enumerated.item[0];
 if (idx >= imux->num_items)
  idx = imux->num_items - 1;
 if (*cur_val == idx)
  return 0;
 snd_hda_codec_write_cache(codec, nid, 0, AC_VERB_SET_CONNECT_SEL,
      imux->items[idx].index);
 *cur_val = idx;
 return 1;
}
