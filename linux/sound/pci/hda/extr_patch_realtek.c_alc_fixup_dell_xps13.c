
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_input_mux {int num_items; } ;
struct hda_fixup {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {int* imux_pins; int* cur_mux; struct hda_input_mux input_mux; } ;
struct alc_spec {TYPE_1__ gen; int shutup; } ;




 int PIN_VREFHIZ ;
 int alc_shutup_dell_xps13 ;
 int snd_hda_codec_set_pin_target (struct hda_codec*,int,int ) ;

__attribute__((used)) static void alc_fixup_dell_xps13(struct hda_codec *codec,
    const struct hda_fixup *fix, int action)
{
 struct alc_spec *spec = codec->spec;
 struct hda_input_mux *imux = &spec->gen.input_mux;
 int i;

 switch (action) {
 case 129:



  snd_hda_codec_set_pin_target(codec, 0x19, PIN_VREFHIZ);
  spec->shutup = alc_shutup_dell_xps13;
  break;
 case 128:

  for (i = 0; i < imux->num_items; i++) {
   if (spec->gen.imux_pins[i] == 0x12) {
    spec->gen.cur_mux[0] = i;
    break;
   }
  }
  break;
 }
}
