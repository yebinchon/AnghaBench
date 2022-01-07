
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sigmatel_spec {int gpio_mask; } ;
struct hda_jack_callback {int private_data; } ;
struct hda_fixup {int dummy; } ;
struct TYPE_2__ {int afg; } ;
struct hda_codec {TYPE_1__ core; struct sigmatel_spec* spec; } ;


 int AC_VERB_SET_GPIO_UNSOLICITED_RSP_MASK ;
 int HDA_FIXUP_ACT_PRE_PROBE ;
 int IS_ERR (struct hda_jack_callback*) ;
 int snd_hda_codec_set_pincfg (struct hda_codec*,int,int) ;
 int snd_hda_codec_write_cache (struct hda_codec*,int ,int ,int ,int) ;
 struct hda_jack_callback* snd_hda_jack_detect_enable_callback (struct hda_codec*,int ,int ) ;
 int stac_vref_event ;

__attribute__((used)) static void stac92hd71bxx_fixup_hp_m4(struct hda_codec *codec,
          const struct hda_fixup *fix, int action)
{
 struct sigmatel_spec *spec = codec->spec;
 struct hda_jack_callback *jack;

 if (action != HDA_FIXUP_ACT_PRE_PROBE)
  return;


 snd_hda_codec_write_cache(codec, codec->core.afg, 0,
      AC_VERB_SET_GPIO_UNSOLICITED_RSP_MASK, 0x02);
 jack = snd_hda_jack_detect_enable_callback(codec, codec->core.afg,
         stac_vref_event);
 if (!IS_ERR(jack))
  jack->private_data = 0x02;

 spec->gpio_mask |= 0x02;


 snd_hda_codec_set_pincfg(codec, 0x0e, 0x01813040);
}
