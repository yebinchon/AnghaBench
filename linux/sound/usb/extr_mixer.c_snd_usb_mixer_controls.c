
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usbmix_ctl_map {scalar_t__ id; int ignore_ctl_error; int selector_map; int map; } ;
struct usb_mixer_interface {int protocol; TYPE_2__* hostif; int ignore_ctl_error; TYPE_1__* chip; } ;
struct uac3_output_terminal_descriptor {int bmControls; int bCSourceID; int bSourceID; int wTerminalDescrStr; int wTerminalType; int bTerminalID; } ;
struct uac2_output_terminal_descriptor {int bmControls; int bCSourceID; int bSourceID; void* iTerminal; int wTerminalType; int bTerminalID; } ;
struct uac1_output_terminal_descriptor {int bSourceID; void* iTerminal; int wTerminalType; int bTerminalID; } ;
struct TYPE_6__ {void* name; void* type; int id; } ;
struct mixer_build {TYPE_3__ oterm; struct usb_mixer_interface* mixer; int unitbitmap; int selector_map; int map; TYPE_1__* chip; int buflen; int buffer; } ;
typedef int state ;
struct TYPE_5__ {int extralen; int extra; } ;
struct TYPE_4__ {scalar_t__ usb_id; } ;


 int EINVAL ;
 int UAC2_TE_CONNECTOR ;
 int UAC3_TE_INSERTION ;
 int UAC_OUTPUT_TERMINAL ;
 int UAC_VERSION_1 ;
 int UAC_VERSION_2 ;
 int build_connector_control (struct usb_mixer_interface*,TYPE_3__*,int) ;
 void* le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int memset (struct mixer_build*,int ,int) ;
 int parse_audio_unit (struct mixer_build*,int ) ;
 int set_bit (int ,int ) ;
 void* snd_usb_find_csint_desc (int ,int ,void*,int ) ;
 int snd_usb_validate_audio_desc (void*,int ) ;
 scalar_t__ uac_v2v3_control_is_readable (void*,int ) ;
 struct usbmix_ctl_map* usbmix_ctl_maps ;

__attribute__((used)) static int snd_usb_mixer_controls(struct usb_mixer_interface *mixer)
{
 struct mixer_build state;
 int err;
 const struct usbmix_ctl_map *map;
 void *p;

 memset(&state, 0, sizeof(state));
 state.chip = mixer->chip;
 state.mixer = mixer;
 state.buffer = mixer->hostif->extra;
 state.buflen = mixer->hostif->extralen;


 for (map = usbmix_ctl_maps; map->id; map++) {
  if (map->id == state.chip->usb_id) {
   state.map = map->map;
   state.selector_map = map->selector_map;
   mixer->ignore_ctl_error = map->ignore_ctl_error;
   break;
  }
 }

 p = ((void*)0);
 while ((p = snd_usb_find_csint_desc(mixer->hostif->extra,
         mixer->hostif->extralen,
         p, UAC_OUTPUT_TERMINAL)) != ((void*)0)) {
  if (!snd_usb_validate_audio_desc(p, mixer->protocol))
   continue;

  if (mixer->protocol == UAC_VERSION_1) {
   struct uac1_output_terminal_descriptor *desc = p;


   set_bit(desc->bTerminalID, state.unitbitmap);
   state.oterm.id = desc->bTerminalID;
   state.oterm.type = le16_to_cpu(desc->wTerminalType);
   state.oterm.name = desc->iTerminal;
   err = parse_audio_unit(&state, desc->bSourceID);
   if (err < 0 && err != -EINVAL)
    return err;
  } else if (mixer->protocol == UAC_VERSION_2) {
   struct uac2_output_terminal_descriptor *desc = p;


   set_bit(desc->bTerminalID, state.unitbitmap);
   state.oterm.id = desc->bTerminalID;
   state.oterm.type = le16_to_cpu(desc->wTerminalType);
   state.oterm.name = desc->iTerminal;
   err = parse_audio_unit(&state, desc->bSourceID);
   if (err < 0 && err != -EINVAL)
    return err;





   err = parse_audio_unit(&state, desc->bCSourceID);
   if (err < 0 && err != -EINVAL)
    return err;

   if (uac_v2v3_control_is_readable(le16_to_cpu(desc->bmControls),
        UAC2_TE_CONNECTOR)) {
    build_connector_control(state.mixer, &state.oterm,
       0);
   }
  } else {
   struct uac3_output_terminal_descriptor *desc = p;


   set_bit(desc->bTerminalID, state.unitbitmap);
   state.oterm.id = desc->bTerminalID;
   state.oterm.type = le16_to_cpu(desc->wTerminalType);
   state.oterm.name = le16_to_cpu(desc->wTerminalDescrStr);
   err = parse_audio_unit(&state, desc->bSourceID);
   if (err < 0 && err != -EINVAL)
    return err;





   err = parse_audio_unit(&state, desc->bCSourceID);
   if (err < 0 && err != -EINVAL)
    return err;

   if (uac_v2v3_control_is_readable(le32_to_cpu(desc->bmControls),
        UAC3_TE_INSERTION)) {
    build_connector_control(state.mixer, &state.oterm,
       0);
   }
  }
 }

 return 0;
}
