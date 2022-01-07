
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int own_eapd_ctl; int beep_nid; } ;
struct sigmatel_spec {int linear_tone_beep; int have_spdif_mux; int aloopback_mask; int eapd_mask; int gpio_mask; int gpio_dir; int gpio_data; int eapd_switch; scalar_t__ aloopback_shift; int * aloopback_ctl; TYPE_1__ gen; } ;
struct hda_codec {int proc_widget_hook; struct sigmatel_spec* spec; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int HDA_FIXUP_ACT_PROBE ;
 int alloc_stac_spec (struct hda_codec*) ;
 int snd_hda_add_verbs (struct hda_codec*,int ) ;
 int snd_hda_apply_fixup (struct hda_codec*,int ) ;
 int snd_hda_pick_fixup (struct hda_codec*,int ,int ,int ) ;
 int stac9205_core_init ;
 int stac9205_fixup_tbl ;
 int stac9205_fixups ;
 int stac9205_loopback ;
 int stac9205_models ;
 int stac9205_proc_hook ;
 int stac_free (struct hda_codec*) ;
 int stac_parse_auto_config (struct hda_codec*) ;

__attribute__((used)) static int patch_stac9205(struct hda_codec *codec)
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

 spec->gen.beep_nid = 0x23;

 snd_hda_add_verbs(codec, stac9205_core_init);
 spec->aloopback_ctl = &stac9205_loopback;

 spec->aloopback_mask = 0x40;
 spec->aloopback_shift = 0;


 spec->eapd_mask = spec->gpio_mask = spec->gpio_dir = 0x1;
 spec->gpio_data = 0x01;


 spec->eapd_switch = 1;

 snd_hda_pick_fixup(codec, stac9205_models, stac9205_fixup_tbl,
      stac9205_fixups);
 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PRE_PROBE);

 err = stac_parse_auto_config(codec);
 if (err < 0) {
  stac_free(codec);
  return err;
 }

 codec->proc_widget_hook = stac9205_proc_hook;

 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PROBE);

 return 0;
}
