
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {unsigned int gpio_data; } ;


 int alc_write_gpio_data (struct hda_codec*) ;

__attribute__((used)) static void alc_update_gpio_data(struct hda_codec *codec, unsigned int mask,
     bool on)
{
 struct alc_spec *spec = codec->spec;
 unsigned int oldval = spec->gpio_data;

 if (on)
  spec->gpio_data |= mask;
 else
  spec->gpio_data &= ~mask;
 if (oldval != spec->gpio_data)
  alc_write_gpio_data(codec);
}
