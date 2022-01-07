
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_jack_callback {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {int hp_jack_present; } ;
struct alc_spec {TYPE_1__ gen; } ;


 int alc_update_gpio_led (struct hda_codec*,int,int) ;
 int snd_hda_gen_hp_automute (struct hda_codec*,struct hda_jack_callback*) ;

__attribute__((used)) static void alc280_hp_gpio4_automute_hook(struct hda_codec *codec,
       struct hda_jack_callback *jack)
{
 struct alc_spec *spec = codec->spec;

 snd_hda_gen_hp_automute(codec, jack);

 alc_update_gpio_led(codec, 0x10, !spec->gen.hp_jack_present);
}
