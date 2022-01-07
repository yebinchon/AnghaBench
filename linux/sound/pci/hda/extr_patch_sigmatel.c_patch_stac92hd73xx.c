
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mixer_nid; int beep_nid; int own_eapd_ctl; int power_down_unused; } ;
struct sigmatel_spec {int have_spdif_mux; int aloopback_mask; int aloopback_shift; int eapd_mask; int gpio_mask; int gpio_dir; int gpio_data; int eapd_switch; int volknob_init; TYPE_2__ gen; int pwr_nids; int num_pwrs; int * aloopback_ctl; scalar_t__ linear_tone_beep; } ;
struct TYPE_3__ {int vendor_id; } ;
struct hda_codec {int power_save_node; int proc_widget_hook; TYPE_1__ core; struct sigmatel_spec* spec; } ;


 int ARRAY_SIZE (int ) ;
 int HDA_FIXUP_ACT_PRE_PROBE ;
 int HDA_FIXUP_ACT_PROBE ;
 int alloc_stac_spec (struct hda_codec*) ;
 int codec_warn (struct hda_codec*,char*) ;
 int has_builtin_speaker (struct hda_codec*) ;
 int snd_hda_add_verbs (struct hda_codec*,int ) ;
 int snd_hda_apply_fixup (struct hda_codec*,int ) ;
 int snd_hda_get_num_conns (struct hda_codec*,int) ;
 int snd_hda_pick_fixup (struct hda_codec*,int ,int ,int ) ;
 int stac92hd73xx_10ch_loopback ;
 int stac92hd73xx_6ch_loopback ;
 int stac92hd73xx_8ch_loopback ;
 int stac92hd73xx_core_init ;
 int stac92hd73xx_fixup_tbl ;
 int stac92hd73xx_fixups ;
 int stac92hd73xx_models ;
 int stac92hd73xx_pwr_nids ;
 int stac92hd7x_proc_hook ;
 int stac_free (struct hda_codec*) ;
 int stac_parse_auto_config (struct hda_codec*) ;

__attribute__((used)) static int patch_stac92hd73xx(struct hda_codec *codec)
{
 struct sigmatel_spec *spec;
 int err;
 int num_dacs;

 err = alloc_stac_spec(codec);
 if (err < 0)
  return err;

 spec = codec->spec;



 if ((codec->core.vendor_id & 0xfffffff0) != 0x111d7670)
  codec->power_save_node = 1;
 spec->linear_tone_beep = 0;
 spec->gen.mixer_nid = 0x1d;
 spec->have_spdif_mux = 1;

 num_dacs = snd_hda_get_num_conns(codec, 0x0a) - 1;
 if (num_dacs < 3 || num_dacs > 5) {
  codec_warn(codec,
      "Could not determine number of channels defaulting to DAC count\n");
  num_dacs = 5;
 }

 switch (num_dacs) {
 case 0x3:
  spec->aloopback_ctl = &stac92hd73xx_6ch_loopback;
  break;
 case 0x4:
  spec->aloopback_ctl = &stac92hd73xx_8ch_loopback;
  break;
 case 0x5:
  spec->aloopback_ctl = &stac92hd73xx_10ch_loopback;
  break;
 }

 spec->aloopback_mask = 0x01;
 spec->aloopback_shift = 8;

 spec->gen.beep_nid = 0x1c;


 spec->eapd_mask = spec->gpio_mask = spec->gpio_dir = 0x1;
 spec->gpio_data = 0x01;

 spec->eapd_switch = 1;

 spec->num_pwrs = ARRAY_SIZE(stac92hd73xx_pwr_nids);
 spec->pwr_nids = stac92hd73xx_pwr_nids;

 spec->gen.own_eapd_ctl = 1;
 spec->gen.power_down_unused = 1;

 snd_hda_pick_fixup(codec, stac92hd73xx_models, stac92hd73xx_fixup_tbl,
      stac92hd73xx_fixups);
 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PRE_PROBE);

 if (!spec->volknob_init)
  snd_hda_add_verbs(codec, stac92hd73xx_core_init);

 err = stac_parse_auto_config(codec);
 if (err < 0) {
  stac_free(codec);
  return err;
 }




 if (spec->eapd_switch && !has_builtin_speaker(codec))
  spec->eapd_switch = 0;

 codec->proc_widget_hook = stac92hd7x_proc_hook;

 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PROBE);

 return 0;
}
