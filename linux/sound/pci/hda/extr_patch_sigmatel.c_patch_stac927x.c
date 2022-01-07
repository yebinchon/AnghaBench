
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int own_eapd_ctl; int beep_nid; } ;
struct sigmatel_spec {int linear_tone_beep; int have_spdif_mux; int eapd_mask; int gpio_mask; int gpio_dir; int gpio_data; int aloopback_mask; int eapd_switch; int volknob_init; scalar_t__ aloopback_shift; int * aloopback_ctl; TYPE_1__ gen; int spdif_labels; } ;
struct hda_codec {TYPE_2__* bus; int proc_widget_hook; struct sigmatel_spec* spec; } ;
struct TYPE_4__ {int needs_damn_long_delay; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int HDA_FIXUP_ACT_PROBE ;
 int alloc_stac_spec (struct hda_codec*) ;
 int snd_hda_add_verbs (struct hda_codec*,int ) ;
 int snd_hda_apply_fixup (struct hda_codec*,int ) ;
 int snd_hda_pick_fixup (struct hda_codec*,int ,int ,int ) ;
 int stac927x_core_init ;
 int stac927x_fixup_tbl ;
 int stac927x_fixups ;
 int stac927x_loopback ;
 int stac927x_models ;
 int stac927x_proc_hook ;
 int stac927x_spdif_labels ;
 int stac_free (struct hda_codec*) ;
 int stac_parse_auto_config (struct hda_codec*) ;

__attribute__((used)) static int patch_stac927x(struct hda_codec *codec)
{
 struct sigmatel_spec *spec;
 int err;

 err = alloc_stac_spec(codec);
 if (err < 0)
  return err;

 spec = codec->spec;
 spec->linear_tone_beep = 1;
 spec->gen.own_eapd_ctl = 1;
 spec->have_spdif_mux = 1;
 spec->spdif_labels = stac927x_spdif_labels;

 spec->gen.beep_nid = 0x23;


 spec->eapd_mask = spec->gpio_mask = 0x01;
 spec->gpio_dir = spec->gpio_data = 0x01;

 spec->aloopback_ctl = &stac927x_loopback;
 spec->aloopback_mask = 0x40;
 spec->aloopback_shift = 0;
 spec->eapd_switch = 1;

 snd_hda_pick_fixup(codec, stac927x_models, stac927x_fixup_tbl,
      stac927x_fixups);
 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PRE_PROBE);

 if (!spec->volknob_init)
  snd_hda_add_verbs(codec, stac927x_core_init);

 err = stac_parse_auto_config(codec);
 if (err < 0) {
  stac_free(codec);
  return err;
 }

 codec->proc_widget_hook = stac927x_proc_hook;
 codec->bus->needs_damn_long_delay = 1;

 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PROBE);

 return 0;
}
