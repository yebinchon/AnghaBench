
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {int dummy; } ;


 int AC_VERB_SET_AMP_GAIN_MUTE ;
 int AMP_OUT_MUTE ;
 int alc_get_hp_pin (struct alc_spec*) ;
 int msleep (int) ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int ,int ) ;

__attribute__((used)) static void alc_shutup_dell_xps13(struct hda_codec *codec)
{
 struct alc_spec *spec = codec->spec;
 int hp_pin = alc_get_hp_pin(spec);


 snd_hda_codec_write(codec, hp_pin, 0,
       AC_VERB_SET_AMP_GAIN_MUTE, AMP_OUT_MUTE);
 msleep(20);
}
