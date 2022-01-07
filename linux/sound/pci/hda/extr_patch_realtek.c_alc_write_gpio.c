
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int afg; } ;
struct hda_codec {TYPE_1__ core; struct alc_spec* spec; } ;
struct alc_spec {scalar_t__ gpio_write_delay; int gpio_dir; int gpio_mask; } ;


 int AC_VERB_SET_GPIO_DIRECTION ;
 int AC_VERB_SET_GPIO_MASK ;
 int alc_write_gpio_data (struct hda_codec*) ;
 int msleep (int) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int ) ;

__attribute__((used)) static void alc_write_gpio(struct hda_codec *codec)
{
 struct alc_spec *spec = codec->spec;

 if (!spec->gpio_mask)
  return;

 snd_hda_codec_write(codec, codec->core.afg, 0,
       AC_VERB_SET_GPIO_MASK, spec->gpio_mask);
 snd_hda_codec_write(codec, codec->core.afg, 0,
       AC_VERB_SET_GPIO_DIRECTION, spec->gpio_dir);
 if (spec->gpio_write_delay)
  msleep(1);
 alc_write_gpio_data(codec);
}
