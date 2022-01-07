
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_VERB_SET_AMP_GAIN_MUTE ;
 int AC_VERB_SET_PIN_WIDGET_CONTROL ;
 int AMP_OUT_MUTE ;
 int PIN_OUT ;
 int alc282_restore_default_value (struct hda_codec*) ;
 int alc_get_hp_pin (struct alc_spec*) ;
 int alc_read_coef_idx (struct hda_codec*,int) ;
 int alc_write_coef_idx (struct hda_codec*,int,int) ;
 int msleep (int) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_jack_detect (struct hda_codec*,int ) ;

__attribute__((used)) static void alc282_init(struct hda_codec *codec)
{
 struct alc_spec *spec = codec->spec;
 hda_nid_t hp_pin = alc_get_hp_pin(spec);
 bool hp_pin_sense;
 int coef78;

 alc282_restore_default_value(codec);

 if (!hp_pin)
  return;
 hp_pin_sense = snd_hda_jack_detect(codec, hp_pin);
 coef78 = alc_read_coef_idx(codec, 0x78);



 alc_write_coef_idx(codec, 0x78, 0x9004);

 if (hp_pin_sense)
  msleep(2);

 snd_hda_codec_write(codec, hp_pin, 0,
       AC_VERB_SET_AMP_GAIN_MUTE, AMP_OUT_MUTE);

 if (hp_pin_sense)
  msleep(85);

 snd_hda_codec_write(codec, hp_pin, 0,
       AC_VERB_SET_PIN_WIDGET_CONTROL, PIN_OUT);

 if (hp_pin_sense)
  msleep(100);


 alc_write_coef_idx(codec, 0x78, coef78);
}
