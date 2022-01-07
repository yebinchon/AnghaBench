
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_jack_callback {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {int hp_jack_present; } ;
struct alc_spec {TYPE_1__ gen; } ;


 int alc_update_gpio_data (struct hda_codec*,int,int ) ;
 int alc_update_headset_jack_cb (struct hda_codec*,struct hda_jack_callback*) ;

__attribute__((used)) static void alc288_update_headset_jack_cb(struct hda_codec *codec,
           struct hda_jack_callback *jack)
{
 struct alc_spec *spec = codec->spec;

 alc_update_headset_jack_cb(codec, jack);

 alc_update_gpio_data(codec, 0x40, spec->gen.hp_jack_present);
}
