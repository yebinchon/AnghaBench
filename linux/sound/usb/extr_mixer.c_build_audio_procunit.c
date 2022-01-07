
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usbmix_name_map {int dummy; } ;
struct TYPE_6__ {int id; } ;
struct usb_mixer_elem_info {int control; int channels; int master_readonly; int min; int max; int res; int initialized; TYPE_2__ head; int val_type; } ;
struct uac_processing_unit_descriptor {int bNrInPins; int wProcessType; int * baSourceID; } ;
struct TYPE_5__ {int name; } ;
struct snd_kcontrol {TYPE_1__ id; int private_free; } ;
struct procunit_value_info {int member_0; char* member_1; int control; char* suffix; int min_value; int val_type; int member_2; } ;
struct procunit_info {int type; char const* name; struct procunit_value_info* values; struct procunit_value_info* member_2; int * member_1; int member_0; } ;
struct mixer_build {int chip; TYPE_3__* mixer; int map; } ;
typedef int __u8 ;
struct TYPE_7__ {int protocol; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int UAC3_UD_MODE_SELECT ;

 int UAC_UD_MODE_SELECT ;





 int append_ctl_name (struct snd_kcontrol*,char*) ;
 scalar_t__ check_ignored_ctl (struct usbmix_name_map const*) ;
 scalar_t__ check_mapped_name (struct usbmix_name_map const*,int ,int) ;
 struct usbmix_name_map* find_map (int ,int,int) ;
 int get_min_max (struct usb_mixer_elem_info*,int ) ;
 struct usb_mixer_elem_info* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int mixer_procunit_ctl ;
 int parse_audio_unit (struct mixer_build*,int ) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,struct usb_mixer_elem_info*) ;
 int snd_usb_copy_string_desc (int ,int,int ,int) ;
 int snd_usb_mixer_add_control (TYPE_2__*,struct snd_kcontrol*) ;
 int snd_usb_mixer_elem_free ;
 int snd_usb_mixer_elem_init_std (TYPE_2__*,TYPE_3__*,int) ;
 int strlcpy (int ,char const*,int) ;
 int uac_extension_unit_iExtension (struct uac_processing_unit_descriptor*,int) ;
 int* uac_processing_unit_bmControls (struct uac_processing_unit_descriptor*,int) ;
 int uac_processing_unit_iProcessing (struct uac_processing_unit_descriptor*,int) ;
 int* uac_processing_unit_specific (struct uac_processing_unit_descriptor*,int) ;
 int uac_v2v3_control_is_readable (int,int) ;
 int uac_v2v3_control_is_writeable (int,int) ;
 int usb_audio_dbg (int ,char*,int ,int ,int,int,int) ;
 int usb_mixer_elem_info_free (struct usb_mixer_elem_info*) ;

__attribute__((used)) static int build_audio_procunit(struct mixer_build *state, int unitid,
    void *raw_desc, struct procunit_info *list,
    bool extension_unit)
{
 struct uac_processing_unit_descriptor *desc = raw_desc;
 int num_ins;
 struct usb_mixer_elem_info *cval;
 struct snd_kcontrol *kctl;
 int i, err, nameid, type, len;
 struct procunit_info *info;
 struct procunit_value_info *valinfo;
 const struct usbmix_name_map *map;
 static struct procunit_value_info default_value_info[] = {
  { 0x01, "Switch", 129 },
  { 0 }
 };
 static struct procunit_info default_info = {
  0, ((void*)0), default_value_info
 };
 const char *name = extension_unit ?
  "Extension Unit" : "Processing Unit";

 num_ins = desc->bNrInPins;
 for (i = 0; i < num_ins; i++) {
  err = parse_audio_unit(state, desc->baSourceID[i]);
  if (err < 0)
   return err;
 }

 type = le16_to_cpu(desc->wProcessType);
 for (info = list; info && info->type; info++)
  if (info->type == type)
   break;
 if (!info || !info->type)
  info = &default_info;

 for (valinfo = info->values; valinfo->control; valinfo++) {
  __u8 *controls = uac_processing_unit_bmControls(desc, state->mixer->protocol);

  if (state->mixer->protocol == 132) {
   if (!(controls[valinfo->control / 8] &
     (1 << ((valinfo->control % 8) - 1))))
    continue;
  } else {
   if (!uac_v2v3_control_is_readable(controls[valinfo->control / 8],
         valinfo->control))
    continue;
  }

  map = find_map(state->map, unitid, valinfo->control);
  if (check_ignored_ctl(map))
   continue;
  cval = kzalloc(sizeof(*cval), GFP_KERNEL);
  if (!cval)
   return -ENOMEM;
  snd_usb_mixer_elem_init_std(&cval->head, state->mixer, unitid);
  cval->control = valinfo->control;
  cval->val_type = valinfo->val_type;
  cval->channels = 1;

  if (state->mixer->protocol > 132 &&
      !uac_v2v3_control_is_writeable(controls[valinfo->control / 8],
         valinfo->control))
   cval->master_readonly = 1;


  switch (type) {
  case 133: {
   bool mode_sel = 0;

   switch (state->mixer->protocol) {
   case 132:
   case 131:
   default:
    if (cval->control == UAC_UD_MODE_SELECT)
     mode_sel = 1;
    break;
   case 130:
    if (cval->control == UAC3_UD_MODE_SELECT)
     mode_sel = 1;
    break;
   }

   if (mode_sel) {
    __u8 *control_spec = uac_processing_unit_specific(desc,
        state->mixer->protocol);
    cval->min = 1;
    cval->max = control_spec[0];
    cval->res = 1;
    cval->initialized = 1;
    break;
   }

   get_min_max(cval, valinfo->min_value);
   break;
  }
  case 128:




   cval->min = 0;
   cval->max = 5;
   cval->res = 1;
   cval->initialized = 1;
   break;
  default:
   get_min_max(cval, valinfo->min_value);
   break;
  }

  kctl = snd_ctl_new1(&mixer_procunit_ctl, cval);
  if (!kctl) {
   usb_mixer_elem_info_free(cval);
   return -ENOMEM;
  }
  kctl->private_free = snd_usb_mixer_elem_free;

  if (check_mapped_name(map, kctl->id.name, sizeof(kctl->id.name))) {
                 ;
  } else if (info->name) {
   strlcpy(kctl->id.name, info->name, sizeof(kctl->id.name));
  } else {
   if (extension_unit)
    nameid = uac_extension_unit_iExtension(desc, state->mixer->protocol);
   else
    nameid = uac_processing_unit_iProcessing(desc, state->mixer->protocol);
   len = 0;
   if (nameid)
    len = snd_usb_copy_string_desc(state->chip,
              nameid,
              kctl->id.name,
              sizeof(kctl->id.name));
   if (!len)
    strlcpy(kctl->id.name, name, sizeof(kctl->id.name));
  }
  append_ctl_name(kctl, " ");
  append_ctl_name(kctl, valinfo->suffix);

  usb_audio_dbg(state->chip,
         "[%d] PU [%s] ch = %d, val = %d/%d\n",
         cval->head.id, kctl->id.name, cval->channels,
         cval->min, cval->max);

  err = snd_usb_mixer_add_control(&cval->head, kctl);
  if (err < 0)
   return err;
 }
 return 0;
}
