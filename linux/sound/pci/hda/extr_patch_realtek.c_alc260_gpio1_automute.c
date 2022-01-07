
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {int hp_jack_present; } ;
struct alc_spec {TYPE_1__ gen; } ;


 int alc_update_gpio_data (struct hda_codec*,int,int ) ;

__attribute__((used)) static void alc260_gpio1_automute(struct hda_codec *codec)
{
 struct alc_spec *spec = codec->spec;

 alc_update_gpio_data(codec, 0x01, spec->gen.hp_jack_present);
}
