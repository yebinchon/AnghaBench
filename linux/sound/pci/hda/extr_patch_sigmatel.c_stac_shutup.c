
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigmatel_spec {int eapd_mask; int gpio_data; int gpio_dir; int gpio_mask; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;


 int snd_hda_shutup_pins (struct hda_codec*) ;
 int stac_gpio_set (struct hda_codec*,int ,int ,int) ;

__attribute__((used)) static void stac_shutup(struct hda_codec *codec)
{
 struct sigmatel_spec *spec = codec->spec;

 snd_hda_shutup_pins(codec);

 if (spec->eapd_mask)
  stac_gpio_set(codec, spec->gpio_mask,
    spec->gpio_dir, spec->gpio_data &
    ~spec->eapd_mask);
}
