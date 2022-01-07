
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_pintbl {int member_0; int member_1; } ;
struct hda_fixup {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {int auto_mute_via_amp; int automute_hook; } ;
struct alc_spec {void* init_amp; TYPE_1__ gen; } ;


 void* ALC_INIT_DEFAULT ;



 int alc_setup_gpio (struct hda_codec*,int) ;
 int asus_tx300_automute ;
 int rename_ctl (struct hda_codec*,char*,char*) ;
 int snd_hda_apply_pincfgs (struct hda_codec*,struct hda_pintbl const*) ;
 int snd_hda_gen_hp_automute ;
 int snd_hda_jack_detect_enable_callback (struct hda_codec*,int,int ) ;

__attribute__((used)) static void alc282_fixup_asus_tx300(struct hda_codec *codec,
        const struct hda_fixup *fix, int action)
{
 struct alc_spec *spec = codec->spec;
 static const struct hda_pintbl dock_pins[] = {
  { 0x1b, 0x21114000 },
  {}
 };

 switch (action) {
 case 129:
  spec->init_amp = ALC_INIT_DEFAULT;

  alc_setup_gpio(codec, 0x04);
  snd_hda_apply_pincfgs(codec, dock_pins);
  spec->gen.auto_mute_via_amp = 1;
  spec->gen.automute_hook = asus_tx300_automute;
  snd_hda_jack_detect_enable_callback(codec, 0x1b,
          snd_hda_gen_hp_automute);
  break;
 case 128:
  spec->init_amp = ALC_INIT_DEFAULT;
  break;
 case 130:



  rename_ctl(codec, "Speaker Playback Switch",
      "Dock Speaker Playback Switch");
  rename_ctl(codec, "Bass Speaker Playback Switch",
      "Speaker Playback Switch");
  break;
 }
}
