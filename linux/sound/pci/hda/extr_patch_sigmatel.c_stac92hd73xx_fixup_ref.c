
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigmatel_spec {scalar_t__ gpio_data; scalar_t__ gpio_dir; scalar_t__ gpio_mask; } ;
struct hda_fixup {int dummy; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int ref92hd73xx_pin_configs ;
 int snd_hda_apply_pincfgs (struct hda_codec*,int ) ;

__attribute__((used)) static void stac92hd73xx_fixup_ref(struct hda_codec *codec,
       const struct hda_fixup *fix, int action)
{
 struct sigmatel_spec *spec = codec->spec;

 if (action != HDA_FIXUP_ACT_PRE_PROBE)
  return;

 snd_hda_apply_pincfgs(codec, ref92hd73xx_pin_configs);
 spec->gpio_mask = spec->gpio_dir = spec->gpio_data = 0;
}
