
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int dummy; } ;


 int AC_VERB_SET_GPIO_DATA ;
 int AC_VERB_SET_GPIO_DIRECTION ;
 int AC_VERB_SET_GPIO_MASK ;


 int ca0132_quirk (struct ca0132_spec*) ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int ,int) ;

__attribute__((used)) static void ca0132_gpio_setup(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;

 switch (ca0132_quirk(spec)) {
 case 128:
  snd_hda_codec_write(codec, 0x01, 0,
    AC_VERB_SET_GPIO_DIRECTION, 0x07);
  snd_hda_codec_write(codec, 0x01, 0,
    AC_VERB_SET_GPIO_MASK, 0x07);
  snd_hda_codec_write(codec, 0x01, 0,
    AC_VERB_SET_GPIO_DATA, 0x04);
  snd_hda_codec_write(codec, 0x01, 0,
    AC_VERB_SET_GPIO_DATA, 0x06);
  break;
 case 129:
  snd_hda_codec_write(codec, 0x01, 0,
    AC_VERB_SET_GPIO_DIRECTION, 0x1E);
  snd_hda_codec_write(codec, 0x01, 0,
    AC_VERB_SET_GPIO_MASK, 0x1F);
  snd_hda_codec_write(codec, 0x01, 0,
    AC_VERB_SET_GPIO_DATA, 0x0C);
  break;
 default:
  break;
 }
}
