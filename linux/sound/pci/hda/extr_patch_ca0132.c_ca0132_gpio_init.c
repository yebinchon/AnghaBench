
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int dummy; } ;





 int ca0132_quirk (struct ca0132_spec*) ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int,int) ;

__attribute__((used)) static void ca0132_gpio_init(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;

 switch (ca0132_quirk(spec)) {
 case 128:
 case 130:
  snd_hda_codec_write(codec, 0x01, 0, 0x793, 0x00);
  snd_hda_codec_write(codec, 0x01, 0, 0x794, 0x53);
  snd_hda_codec_write(codec, 0x01, 0, 0x790, 0x23);
  break;
 case 129:
  snd_hda_codec_write(codec, 0x01, 0, 0x793, 0x00);
  snd_hda_codec_write(codec, 0x01, 0, 0x794, 0x5B);
  break;
 default:
  break;
 }

}
