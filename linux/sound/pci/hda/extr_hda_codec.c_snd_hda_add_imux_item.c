
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_input_mux {int num_items; TYPE_1__* items; } ;
struct hda_codec {int dummy; } ;
struct TYPE_2__ {int index; int label; } ;


 int EINVAL ;
 int HDA_MAX_NUM_INPUTS ;
 int codec_err (struct hda_codec*,char*) ;
 int snprintf (int ,int,char*,char const*,int) ;
 int strlcpy (int ,char const*,int) ;
 int strlen (char const*) ;
 int strncmp (char const*,int ,int ) ;

int snd_hda_add_imux_item(struct hda_codec *codec,
     struct hda_input_mux *imux, const char *label,
     int index, int *type_idx)
{
 int i, label_idx = 0;
 if (imux->num_items >= HDA_MAX_NUM_INPUTS) {
  codec_err(codec, "hda_codec: Too many imux items!\n");
  return -EINVAL;
 }
 for (i = 0; i < imux->num_items; i++) {
  if (!strncmp(label, imux->items[i].label, strlen(label)))
   label_idx++;
 }
 if (type_idx)
  *type_idx = label_idx;
 if (label_idx > 0)
  snprintf(imux->items[imux->num_items].label,
    sizeof(imux->items[imux->num_items].label),
    "%s %d", label, label_idx);
 else
  strlcpy(imux->items[imux->num_items].label, label,
   sizeof(imux->items[imux->num_items].label));
 imux->items[imux->num_items].index = index;
 imux->num_items++;
 return 0;
}
