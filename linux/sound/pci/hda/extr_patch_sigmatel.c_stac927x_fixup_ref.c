
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigmatel_spec {scalar_t__ gpio_data; scalar_t__ gpio_dir; scalar_t__ gpio_mask; scalar_t__ eapd_mask; } ;
struct hda_fixup {int dummy; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int ref927x_pin_configs ;
 int snd_hda_apply_pincfgs (struct hda_codec*,int ) ;

__attribute__((used)) static void stac927x_fixup_ref(struct hda_codec *codec,
          const struct hda_fixup *fix, int action)
{
 struct sigmatel_spec *spec = codec->spec;

 if (action == HDA_FIXUP_ACT_PRE_PROBE) {
  snd_hda_apply_pincfgs(codec, ref927x_pin_configs);
  spec->eapd_mask = spec->gpio_mask = 0;
  spec->gpio_dir = spec->gpio_data = 0;
 }
}
