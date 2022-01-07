
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int suppress_auto_mute; } ;
struct sigmatel_spec {int gpio_mask; int gpio_dir; int gpio_data; TYPE_1__ gen; } ;
struct hda_fixup {int dummy; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;

__attribute__((used)) static void stac9200_fixup_panasonic(struct hda_codec *codec,
         const struct hda_fixup *fix, int action)
{
 struct sigmatel_spec *spec = codec->spec;

 if (action == HDA_FIXUP_ACT_PRE_PROBE) {
  spec->gpio_mask = spec->gpio_dir = 0x09;
  spec->gpio_data = 0x00;



  spec->gen.suppress_auto_mute = 1;
 }
}
