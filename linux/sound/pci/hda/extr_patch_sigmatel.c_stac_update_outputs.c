
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int master_mute; scalar_t__ speaker_muted; } ;
struct sigmatel_spec {int gpio_mute; unsigned int eapd_mask; unsigned int gpio_data; int gpio_dir; int gpio_mask; TYPE_2__ gen; scalar_t__ eapd_switch; } ;
struct TYPE_3__ {int afg; } ;
struct hda_codec {TYPE_1__ core; struct sigmatel_spec* spec; } ;


 int AC_VERB_GET_GPIO_DATA ;
 int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_gen_update_outputs (struct hda_codec*) ;
 int stac_gpio_set (struct hda_codec*,int ,int ,unsigned int) ;

__attribute__((used)) static void stac_update_outputs(struct hda_codec *codec)
{
 struct sigmatel_spec *spec = codec->spec;

 if (spec->gpio_mute)
  spec->gen.master_mute =
   !(snd_hda_codec_read(codec, codec->core.afg, 0,
    AC_VERB_GET_GPIO_DATA, 0) & spec->gpio_mute);

 snd_hda_gen_update_outputs(codec);

 if (spec->eapd_mask && spec->eapd_switch) {
  unsigned int val = spec->gpio_data;
  if (spec->gen.speaker_muted)
   val &= ~spec->eapd_mask;
  else
   val |= spec->eapd_mask;
  if (spec->gpio_data != val) {
   spec->gpio_data = val;
   stac_gpio_set(codec, spec->gpio_mask, spec->gpio_dir,
          val);
  }
 }
}
