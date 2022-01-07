
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int own_eapd_ctl; int power_down_unused; int mixer_nid; int beep_nid; } ;
struct sigmatel_spec {int default_polarity; int num_pwrs; int pwr_nids; TYPE_2__ gen; scalar_t__ linear_tone_beep; } ;
struct TYPE_3__ {int power_caps; } ;
struct hda_codec {int power_save_node; int proc_widget_hook; struct sigmatel_spec* spec; TYPE_1__ core; } ;


 int AC_PWRST_EPSS ;
 int ARRAY_SIZE (int ) ;
 int HDA_FIXUP_ACT_PRE_PROBE ;
 int HDA_FIXUP_ACT_PROBE ;
 int alloc_stac_spec (struct hda_codec*) ;
 int snd_hda_add_verbs (struct hda_codec*,int ) ;
 int snd_hda_apply_fixup (struct hda_codec*,int ) ;
 int snd_hda_pick_fixup (struct hda_codec*,int ,int ,int ) ;
 int stac92hd83xxx_core_init ;
 int stac92hd83xxx_fixup_tbl ;
 int stac92hd83xxx_fixups ;
 int stac92hd83xxx_models ;
 int stac92hd83xxx_pwr_nids ;
 int stac92hd_proc_hook ;
 int stac_free (struct hda_codec*) ;
 int stac_parse_auto_config (struct hda_codec*) ;
 int stac_setup_gpio (struct hda_codec*) ;

__attribute__((used)) static int patch_stac92hd83xxx(struct hda_codec *codec)
{
 struct sigmatel_spec *spec;
 int err;

 err = alloc_stac_spec(codec);
 if (err < 0)
  return err;


 codec->core.power_caps &= ~AC_PWRST_EPSS;

 spec = codec->spec;
 codec->power_save_node = 1;
 spec->linear_tone_beep = 0;
 spec->gen.own_eapd_ctl = 1;
 spec->gen.power_down_unused = 1;
 spec->gen.mixer_nid = 0x1b;

 spec->gen.beep_nid = 0x21;
 spec->pwr_nids = stac92hd83xxx_pwr_nids;
 spec->num_pwrs = ARRAY_SIZE(stac92hd83xxx_pwr_nids);
 spec->default_polarity = -1;

 snd_hda_add_verbs(codec, stac92hd83xxx_core_init);

 snd_hda_pick_fixup(codec, stac92hd83xxx_models, stac92hd83xxx_fixup_tbl,
      stac92hd83xxx_fixups);
 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PRE_PROBE);

 stac_setup_gpio(codec);

 err = stac_parse_auto_config(codec);
 if (err < 0) {
  stac_free(codec);
  return err;
 }

 codec->proc_widget_hook = stac92hd_proc_hook;

 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PROBE);

 return 0;
}
