
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_audio_term {scalar_t__ channels; } ;
struct uac_mixer_unit_descriptor {int bNrInPins; int * baSourceID; } ;
struct mixer_build {TYPE_1__* mixer; int chip; } ;
typedef int __u8 ;
struct TYPE_2__ {int protocol; } ;


 int build_mixer_unit_ctl (struct mixer_build*,struct uac_mixer_unit_descriptor*,int,int,int,int,struct usb_audio_term*) ;
 int check_input_term (struct mixer_build*,int ,struct usb_audio_term*) ;
 scalar_t__ check_matrix_bitmap (int *,int,int,int) ;
 scalar_t__ mixer_bitmap_overflow (struct uac_mixer_unit_descriptor*,int ,int,int) ;
 int parse_audio_unit (struct mixer_build*,int ) ;
 int * uac_mixer_unit_bmControls (struct uac_mixer_unit_descriptor*,int ) ;
 int uac_mixer_unit_get_channels (struct mixer_build*,struct uac_mixer_unit_descriptor*) ;
 int usb_audio_err (int ,char*,int) ;

__attribute__((used)) static int parse_audio_mixer_unit(struct mixer_build *state, int unitid,
      void *raw_desc)
{
 struct uac_mixer_unit_descriptor *desc = raw_desc;
 struct usb_audio_term iterm;
 int input_pins, num_ins, num_outs;
 int pin, ich, err;

 err = uac_mixer_unit_get_channels(state, desc);
 if (err < 0) {
  usb_audio_err(state->chip,
         "invalid MIXER UNIT descriptor %d\n",
         unitid);
  return err;
 }

 num_outs = err;
 input_pins = desc->bNrInPins;

 num_ins = 0;
 ich = 0;
 for (pin = 0; pin < input_pins; pin++) {
  err = parse_audio_unit(state, desc->baSourceID[pin]);
  if (err < 0)
   continue;

  if (!num_outs)
   continue;
  err = check_input_term(state, desc->baSourceID[pin], &iterm);
  if (err < 0)
   return err;
  num_ins += iterm.channels;
  if (mixer_bitmap_overflow(desc, state->mixer->protocol,
       num_ins, num_outs))
   break;
  for (; ich < num_ins; ich++) {
   int och, ich_has_controls = 0;

   for (och = 0; och < num_outs; och++) {
    __u8 *c = uac_mixer_unit_bmControls(desc,
      state->mixer->protocol);

    if (check_matrix_bitmap(c, ich, och, num_outs)) {
     ich_has_controls = 1;
     break;
    }
   }
   if (ich_has_controls)
    build_mixer_unit_ctl(state, desc, pin, ich, num_outs,
           unitid, &iterm);
  }
 }
 return 0;
}
