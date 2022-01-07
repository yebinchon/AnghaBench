
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {int gpio_data; } ;


 int AC_VERB_SET_GPIO_DATA ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int ,int ) ;

__attribute__((used)) static void alc_write_gpio_data(struct hda_codec *codec)
{
 struct alc_spec *spec = codec->spec;

 snd_hda_codec_write(codec, 0x01, 0, AC_VERB_SET_GPIO_DATA,
       spec->gpio_data);
}
