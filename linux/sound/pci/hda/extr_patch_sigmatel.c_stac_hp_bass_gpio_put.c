
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {scalar_t__* value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct sigmatel_spec {int gpio_data; int gpio_dir; int gpio_mask; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;


 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int stac_gpio_set (struct hda_codec*,int ,int ,unsigned int) ;

__attribute__((used)) static int stac_hp_bass_gpio_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct sigmatel_spec *spec = codec->spec;
 unsigned int gpio_data;

 gpio_data = (spec->gpio_data & ~0x20) |
  (ucontrol->value.integer.value[0] ? 0x20 : 0);
 if (gpio_data == spec->gpio_data)
  return 0;
 spec->gpio_data = gpio_data;
 stac_gpio_set(codec, spec->gpio_mask, spec->gpio_dir, spec->gpio_data);
 return 1;
}
