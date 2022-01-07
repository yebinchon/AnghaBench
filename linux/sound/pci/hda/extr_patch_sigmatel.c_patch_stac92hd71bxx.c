
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int own_eapd_ctl; int power_down_unused; int mixer_nid; int beep_nid; } ;
struct sigmatel_spec {int have_spdif_mux; int gpio_mask; int gpio_dir; int gpio_data; int stream_delay; int aloopback_mask; int powerdown_adcs; int pwr_nids; int num_pwrs; TYPE_2__ gen; scalar_t__ aloopback_shift; int * aloopback_ctl; scalar_t__ linear_tone_beep; } ;
struct TYPE_3__ {int vendor_id; int revision_id; } ;
struct hda_codec {int proc_widget_hook; TYPE_1__ core; struct sigmatel_spec* spec; } ;
typedef scalar_t__ hda_nid_t ;


 int AC_WCAP_IN_AMP ;
 scalar_t__ AC_WID_VOL_KNB ;
 int ARRAY_SIZE (int ) ;
 int HDA_FIXUP_ACT_PRE_PROBE ;
 int HDA_FIXUP_ACT_PROBE ;
 int HDA_INPUT ;
 int alloc_stac_spec (struct hda_codec*) ;
 int get_wcaps (struct hda_codec*,int) ;
 scalar_t__ get_wcaps_type (int) ;
 int snd_hda_add_verbs (struct hda_codec*,int ) ;
 int snd_hda_apply_fixup (struct hda_codec*,int ) ;
 int snd_hda_codec_amp_init_stereo (struct hda_codec*,scalar_t__ const,int ,int ,int,int) ;
 int snd_hda_codec_set_pincfg (struct hda_codec*,int,int) ;
 int snd_hda_pick_fixup (struct hda_codec*,int ,int ,int ) ;
 int stac92hd71bxx_core_init ;
 int stac92hd71bxx_fixup_tbl ;
 int stac92hd71bxx_fixups ;
 int stac92hd71bxx_loopback ;
 int stac92hd71bxx_models ;
 int stac92hd71bxx_pwr_nids ;
 scalar_t__* stac92hd71bxx_unmute_nids ;
 int stac92hd7x_proc_hook ;
 int stac_free (struct hda_codec*) ;
 int stac_parse_auto_config (struct hda_codec*) ;
 int stac_setup_gpio (struct hda_codec*) ;

__attribute__((used)) static int patch_stac92hd71bxx(struct hda_codec *codec)
{
 struct sigmatel_spec *spec;
 const hda_nid_t *unmute_nids = stac92hd71bxx_unmute_nids;
 int err;

 err = alloc_stac_spec(codec);
 if (err < 0)
  return err;

 spec = codec->spec;


 spec->linear_tone_beep = 0;
 spec->gen.own_eapd_ctl = 1;
 spec->gen.power_down_unused = 1;
 spec->gen.mixer_nid = 0x17;
 spec->have_spdif_mux = 1;


 spec->gpio_mask = 0x01;
 spec->gpio_dir = 0x01;
 spec->gpio_data = 0x01;

 switch (codec->core.vendor_id) {
 case 0x111d76b6:
 case 0x111d76b7:
  unmute_nids++;
  break;
 case 0x111d7608:
  if ((codec->core.revision_id & 0xf) == 0 ||
      (codec->core.revision_id & 0xf) == 1)
   spec->stream_delay = 40;


  unmute_nids++;
  snd_hda_codec_set_pincfg(codec, 0x0f, 0x40f000f0);
  snd_hda_codec_set_pincfg(codec, 0x19, 0x40f000f3);
  break;
 case 0x111d7603:
  if ((codec->core.revision_id & 0xf) == 1)
   spec->stream_delay = 40;

  break;
 }

 if (get_wcaps_type(get_wcaps(codec, 0x28)) == AC_WID_VOL_KNB)
  snd_hda_add_verbs(codec, stac92hd71bxx_core_init);

 if (get_wcaps(codec, 0xa) & AC_WCAP_IN_AMP) {
  const hda_nid_t *p;
  for (p = unmute_nids; *p; p++)
   snd_hda_codec_amp_init_stereo(codec, *p, HDA_INPUT, 0,
            0xff, 0x00);
 }

 spec->aloopback_ctl = &stac92hd71bxx_loopback;
 spec->aloopback_mask = 0x50;
 spec->aloopback_shift = 0;

 spec->powerdown_adcs = 1;
 spec->gen.beep_nid = 0x26;
 spec->num_pwrs = ARRAY_SIZE(stac92hd71bxx_pwr_nids);
 spec->pwr_nids = stac92hd71bxx_pwr_nids;

 snd_hda_pick_fixup(codec, stac92hd71bxx_models, stac92hd71bxx_fixup_tbl,
      stac92hd71bxx_fixups);
 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PRE_PROBE);

 stac_setup_gpio(codec);

 err = stac_parse_auto_config(codec);
 if (err < 0) {
  stac_free(codec);
  return err;
 }

 codec->proc_widget_hook = stac92hd7x_proc_hook;

 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PROBE);

 return 0;
}
