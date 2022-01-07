
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line_in_auto_switch; } ;
struct sigmatel_spec {TYPE_1__ gen; int gpio_led_polarity; int gpio_led; int default_polarity; } ;
struct hda_fixup {int dummy; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int codec_dbg (struct hda_codec*,char*,int ,int ) ;
 scalar_t__ find_mute_led_cfg (struct hda_codec*,int ) ;
 scalar_t__ hp_bnb2011_with_dock (struct hda_codec*) ;
 int snd_hda_codec_set_pincfg (struct hda_codec*,int,int) ;

__attribute__((used)) static void stac92hd83xxx_fixup_hp(struct hda_codec *codec,
       const struct hda_fixup *fix, int action)
{
 struct sigmatel_spec *spec = codec->spec;

 if (action != HDA_FIXUP_ACT_PRE_PROBE)
  return;

 if (hp_bnb2011_with_dock(codec)) {
  snd_hda_codec_set_pincfg(codec, 0xa, 0x2101201f);
  snd_hda_codec_set_pincfg(codec, 0xf, 0x2181205e);
 }

 if (find_mute_led_cfg(codec, spec->default_polarity))
  codec_dbg(codec, "mute LED gpio %d polarity %d\n",
    spec->gpio_led,
    spec->gpio_led_polarity);


 spec->gen.line_in_auto_switch = 1;
}
