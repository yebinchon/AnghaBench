
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigmatel_spec {int gpio_led_polarity; int gpio_led; int default_polarity; } ;
struct hda_fixup {int dummy; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int codec_dbg (struct hda_codec*,char*,int ,int ) ;
 scalar_t__ find_mute_led_cfg (struct hda_codec*,int ) ;

__attribute__((used)) static void stac92hd95_fixup_hp_led(struct hda_codec *codec,
        const struct hda_fixup *fix, int action)
{
 struct sigmatel_spec *spec = codec->spec;

 if (action != HDA_FIXUP_ACT_PRE_PROBE)
  return;

 if (find_mute_led_cfg(codec, spec->default_polarity))
  codec_dbg(codec, "mute LED gpio %d polarity %d\n",
    spec->gpio_led,
    spec->gpio_led_polarity);
}
