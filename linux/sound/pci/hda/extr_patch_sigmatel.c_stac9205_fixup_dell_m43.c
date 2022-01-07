
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sigmatel_spec {int gpio_dir; int eapd_mask; int gpio_mask; int gpio_mute; int gpio_data; } ;
struct hda_jack_callback {int private_data; } ;
struct hda_fixup {int dummy; } ;
struct TYPE_2__ {int afg; } ;
struct hda_codec {TYPE_1__ core; struct sigmatel_spec* spec; } ;


 int AC_VERB_SET_GPIO_UNSOLICITED_RSP_MASK ;
 int HDA_FIXUP_ACT_PRE_PROBE ;
 int IS_ERR (struct hda_jack_callback*) ;
 int dell_9205_m43_pin_configs ;
 int snd_hda_apply_pincfgs (struct hda_codec*,int ) ;
 int snd_hda_codec_write_cache (struct hda_codec*,int ,int ,int ,int) ;
 struct hda_jack_callback* snd_hda_jack_detect_enable_callback (struct hda_codec*,int ,int ) ;
 int stac_vref_event ;

__attribute__((used)) static void stac9205_fixup_dell_m43(struct hda_codec *codec,
        const struct hda_fixup *fix, int action)
{
 struct sigmatel_spec *spec = codec->spec;
 struct hda_jack_callback *jack;

 if (action == HDA_FIXUP_ACT_PRE_PROBE) {
  snd_hda_apply_pincfgs(codec, dell_9205_m43_pin_configs);


  snd_hda_codec_write_cache(codec, codec->core.afg, 0,
   AC_VERB_SET_GPIO_UNSOLICITED_RSP_MASK, 0x10);
  jack = snd_hda_jack_detect_enable_callback(codec, codec->core.afg,
          stac_vref_event);
  if (!IS_ERR(jack))
   jack->private_data = 0x01;

  spec->gpio_dir = 0x0b;
  spec->eapd_mask = 0x01;
  spec->gpio_mask = 0x1b;
  spec->gpio_mute = 0x10;



  spec->gpio_data = 0x01;
 }
}
