
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int vendor_id; int subsystem_id; int chip_name; } ;
struct hda_codec {int single_adc_amp; int pin_amp_workaround; int power_save_node; TYPE_4__* bus; TYPE_2__ core; int patch_ops; struct conexant_spec* spec; } ;
struct TYPE_6__ {int hook; } ;
struct TYPE_10__ {int own_eapd_ctl; int mixer_nid; int vmaster_mute_enum; int autocfg; void* add_stereo_mix_input; TYPE_1__ vmaster_mute; } ;
struct conexant_spec {TYPE_5__ gen; int parse_flags; scalar_t__ dynamic_eapd; } ;
struct TYPE_8__ {int sync_write; } ;
struct TYPE_9__ {int allow_bus_reset; TYPE_3__ core; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HDA_FIXUP_ACT_PRE_PROBE ;
 int HDA_FIXUP_ACT_PROBE ;
 void* HDA_HINT_STEREO_MIX_AUTO ;
 int add_cx5051_fake_mutes (struct hda_codec*) ;
 int codec_info (struct hda_codec*,char*,...) ;
 int cx_auto_free (struct hda_codec*) ;
 int cx_auto_parse_beep (struct hda_codec*) ;
 int cx_auto_parse_eapd (struct hda_codec*) ;
 int cx_auto_patch_ops ;
 int cx_auto_vmaster_hook ;
 int cxt5045_fixup_models ;
 int cxt5045_fixups ;
 int cxt5047_fixup_models ;
 int cxt5047_fixups ;
 int cxt5051_fixup_models ;
 int cxt5051_fixups ;
 int cxt5066_fixup_models ;
 int cxt5066_fixups ;
 int cxt_fixups ;
 struct conexant_spec* kzalloc (int,int ) ;
 int snd_hda_apply_fixup (struct hda_codec*,int ) ;
 int snd_hda_gen_parse_auto_config (struct hda_codec*,int *) ;
 int snd_hda_gen_spec_init (TYPE_5__*) ;
 int snd_hda_parse_pin_defcfg (struct hda_codec*,int *,int *,int ) ;
 int snd_hda_pick_fixup (struct hda_codec*,int ,int ,int ) ;

__attribute__((used)) static int patch_conexant_auto(struct hda_codec *codec)
{
 struct conexant_spec *spec;
 int err;

 codec_info(codec, "%s: BIOS auto-probing.\n", codec->core.chip_name);

 spec = kzalloc(sizeof(*spec), GFP_KERNEL);
 if (!spec)
  return -ENOMEM;
 snd_hda_gen_spec_init(&spec->gen);
 codec->spec = spec;
 codec->patch_ops = cx_auto_patch_ops;

 cx_auto_parse_eapd(codec);
 spec->gen.own_eapd_ctl = 1;
 if (spec->dynamic_eapd)
  spec->gen.vmaster_mute.hook = cx_auto_vmaster_hook;

 switch (codec->core.vendor_id) {
 case 0x14f15045:
  codec->single_adc_amp = 1;
  spec->gen.mixer_nid = 0x17;
  spec->gen.add_stereo_mix_input = HDA_HINT_STEREO_MIX_AUTO;
  snd_hda_pick_fixup(codec, cxt5045_fixup_models,
       cxt5045_fixups, cxt_fixups);
  break;
 case 0x14f15047:
  codec->pin_amp_workaround = 1;
  spec->gen.mixer_nid = 0x19;
  spec->gen.add_stereo_mix_input = HDA_HINT_STEREO_MIX_AUTO;
  snd_hda_pick_fixup(codec, cxt5047_fixup_models,
       cxt5047_fixups, cxt_fixups);
  break;
 case 0x14f15051:
  add_cx5051_fake_mutes(codec);
  codec->pin_amp_workaround = 1;
  snd_hda_pick_fixup(codec, cxt5051_fixup_models,
       cxt5051_fixups, cxt_fixups);
  break;
 case 0x14f150f2:
  codec->power_save_node = 1;

 default:
  codec->pin_amp_workaround = 1;
  snd_hda_pick_fixup(codec, cxt5066_fixup_models,
       cxt5066_fixups, cxt_fixups);
  break;
 }







 switch (codec->core.subsystem_id >> 16) {
 case 0x103c:
  spec->gen.vmaster_mute_enum = 1;
  break;
 }

 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PRE_PROBE);

 err = snd_hda_parse_pin_defcfg(codec, &spec->gen.autocfg, ((void*)0),
           spec->parse_flags);
 if (err < 0)
  goto error;

 err = snd_hda_gen_parse_auto_config(codec, &spec->gen.autocfg);
 if (err < 0)
  goto error;

 err = cx_auto_parse_beep(codec);
 if (err < 0)
  goto error;





 if (!codec->bus->core.sync_write) {
  codec_info(codec,
      "Enable sync_write for stable communication\n");
  codec->bus->core.sync_write = 1;
  codec->bus->allow_bus_reset = 1;
 }

 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PROBE);

 return 0;

 error:
 cx_auto_free(codec);
 return err;
}
