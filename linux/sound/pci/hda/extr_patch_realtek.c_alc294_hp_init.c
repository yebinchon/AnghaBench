
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {int no_shutup_pins; } ;
typedef int hda_nid_t ;


 int AC_VERB_SET_AMP_GAIN_MUTE ;
 int AC_VERB_SET_PIN_WIDGET_CONTROL ;
 int AMP_OUT_MUTE ;
 int alc_get_hp_pin (struct alc_spec*) ;
 int alc_read_coefex_idx (struct hda_codec*,int,int) ;
 int alc_update_coef_idx (struct hda_codec*,int,int,int) ;
 int alc_update_coefex_idx (struct hda_codec*,int,int,int,int) ;
 int msleep (int) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int) ;

__attribute__((used)) static void alc294_hp_init(struct hda_codec *codec)
{
 struct alc_spec *spec = codec->spec;
 hda_nid_t hp_pin = alc_get_hp_pin(spec);
 int i, val;

 if (!hp_pin)
  return;

 snd_hda_codec_write(codec, hp_pin, 0,
       AC_VERB_SET_AMP_GAIN_MUTE, AMP_OUT_MUTE);

 msleep(100);

 if (!spec->no_shutup_pins)
  snd_hda_codec_write(codec, hp_pin, 0,
        AC_VERB_SET_PIN_WIDGET_CONTROL, 0x0);

 alc_update_coef_idx(codec, 0x6f, 0x000f, 0);
 alc_update_coefex_idx(codec, 0x58, 0x00, 0x8000, 0x8000);


 val = alc_read_coefex_idx(codec, 0x58, 0x01);
 for (i = 0; i < 20 && val & 0x0080; i++) {
  msleep(50);
  val = alc_read_coefex_idx(codec, 0x58, 0x01);
 }

 alc_update_coef_idx(codec, 0x6f, 0x000f, 0x000b);
 msleep(50);
}
