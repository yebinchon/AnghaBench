
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {scalar_t__* imux_pins; size_t* cur_mux; int hp_jack_present; } ;
struct alc_spec {scalar_t__ headset_mic_pin; scalar_t__ headphone_mic_pin; int current_headset_mode; TYPE_1__ gen; int current_headset_type; } ;
typedef scalar_t__ hda_nid_t ;


 int AC_PINCTL_HP_EN ;
 int AC_PINCTL_OUT_EN ;



 int ALC_HEADSET_MODE_UNKNOWN ;

 int ALC_HEADSET_TYPE_CTIA ;
 int ALC_HEADSET_TYPE_OMTP ;
 int ALC_HEADSET_TYPE_UNKNOWN ;
 int PIN_VREFHIZ ;
 int alc_determine_headset_type (struct hda_codec*) ;
 scalar_t__ alc_get_hp_pin (struct alc_spec*) ;
 int alc_headset_mode_ctia (struct hda_codec*) ;
 int alc_headset_mode_default (struct hda_codec*) ;
 int alc_headset_mode_mic_in (struct hda_codec*,scalar_t__,scalar_t__) ;
 int alc_headset_mode_omtp (struct hda_codec*) ;
 int alc_headset_mode_unplugged (struct hda_codec*) ;
 int snd_hda_gen_update_outputs (struct hda_codec*) ;
 int snd_hda_jack_detect (struct hda_codec*,scalar_t__) ;
 int snd_hda_set_pin_ctl_cache (struct hda_codec*,scalar_t__,int) ;

__attribute__((used)) static void alc_update_headset_mode(struct hda_codec *codec)
{
 struct alc_spec *spec = codec->spec;

 hda_nid_t mux_pin = spec->gen.imux_pins[spec->gen.cur_mux[0]];
 hda_nid_t hp_pin = alc_get_hp_pin(spec);

 int new_headset_mode;

 if (!snd_hda_jack_detect(codec, hp_pin))
  new_headset_mode = 128;
 else if (mux_pin == spec->headset_mic_pin)
  new_headset_mode = 130;
 else if (mux_pin == spec->headphone_mic_pin)
  new_headset_mode = 129;
 else
  new_headset_mode = 131;

 if (new_headset_mode == spec->current_headset_mode) {
  snd_hda_gen_update_outputs(codec);
  return;
 }

 switch (new_headset_mode) {
 case 128:
  alc_headset_mode_unplugged(codec);
  spec->current_headset_mode = ALC_HEADSET_MODE_UNKNOWN;
  spec->current_headset_type = ALC_HEADSET_TYPE_UNKNOWN;
  spec->gen.hp_jack_present = 0;
  break;
 case 130:
  if (spec->current_headset_type == ALC_HEADSET_TYPE_UNKNOWN)
   alc_determine_headset_type(codec);
  if (spec->current_headset_type == ALC_HEADSET_TYPE_CTIA)
   alc_headset_mode_ctia(codec);
  else if (spec->current_headset_type == ALC_HEADSET_TYPE_OMTP)
   alc_headset_mode_omtp(codec);
  spec->gen.hp_jack_present = 1;
  break;
 case 129:
  alc_headset_mode_mic_in(codec, hp_pin, spec->headphone_mic_pin);
  spec->gen.hp_jack_present = 0;
  break;
 case 131:
  alc_headset_mode_default(codec);
  spec->gen.hp_jack_present = 1;
  break;
 }
 if (new_headset_mode != 129) {
  snd_hda_set_pin_ctl_cache(codec, hp_pin,
       AC_PINCTL_OUT_EN | AC_PINCTL_HP_EN);
  if (spec->headphone_mic_pin && spec->headphone_mic_pin != hp_pin)
   snd_hda_set_pin_ctl_cache(codec, spec->headphone_mic_pin,
        PIN_VREFHIZ);
 }
 spec->current_headset_mode = new_headset_mode;

 snd_hda_gen_update_outputs(codec);
}
