
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_jack_callback {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {scalar_t__ hp_jack_present; } ;
struct alc_spec {TYPE_1__ gen; } ;


 int AC_VERB_SET_PIN_WIDGET_CONTROL ;
 int PIN_VREF80 ;
 int msleep (int) ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int ,int) ;
 int snd_hda_gen_hp_automute (struct hda_codec*,struct hda_jack_callback*) ;

__attribute__((used)) static void alc269_x101_hp_automute_hook(struct hda_codec *codec,
      struct hda_jack_callback *jack)
{
 struct alc_spec *spec = codec->spec;
 int vref;
 msleep(200);
 snd_hda_gen_hp_automute(codec, jack);

 vref = spec->gen.hp_jack_present ? PIN_VREF80 : 0;
 msleep(100);
 snd_hda_codec_write(codec, 0x18, 0, AC_VERB_SET_PIN_WIDGET_CONTROL,
       vref);
 msleep(500);
 snd_hda_codec_write(codec, 0x18, 0, AC_VERB_SET_PIN_WIDGET_CONTROL,
       vref);
}
