
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {int patch_ops; } ;
struct TYPE_2__ {unsigned long long out_vol_mask; int automute_hook; } ;
struct cs_spec {TYPE_1__ gen; } ;


 int AC_WCAP_STEREO ;
 int CS4208_VENDOR_NID ;
 int ENOMEM ;
 int HDA_FIXUP_ACT_PRE_PROBE ;
 int HDA_FIXUP_ACT_PROBE ;
 int cs4208_fix_amp_caps (struct hda_codec*,int) ;
 int cs4208_fixup_tbl ;
 int cs4208_fixups ;
 int cs4208_models ;
 struct cs_spec* cs_alloc_spec (struct hda_codec*,int ) ;
 int cs_automute ;
 int cs_free (struct hda_codec*) ;
 int cs_parse_auto_config (struct hda_codec*) ;
 int cs_patch_ops ;
 int get_wcaps (struct hda_codec*,int) ;
 int snd_hda_apply_fixup (struct hda_codec*,int ) ;
 int snd_hda_override_wcaps (struct hda_codec*,int,int) ;
 int snd_hda_pick_fixup (struct hda_codec*,int ,int ,int ) ;

__attribute__((used)) static int patch_cs4208(struct hda_codec *codec)
{
 struct cs_spec *spec;
 int err;

 spec = cs_alloc_spec(codec, CS4208_VENDOR_NID);
 if (!spec)
  return -ENOMEM;

 codec->patch_ops = cs_patch_ops;
 spec->gen.automute_hook = cs_automute;

 spec->gen.out_vol_mask = 1ULL << 0x10;

 snd_hda_pick_fixup(codec, cs4208_models, cs4208_fixup_tbl,
      cs4208_fixups);
 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PRE_PROBE);

 snd_hda_override_wcaps(codec, 0x18,
          get_wcaps(codec, 0x18) | AC_WCAP_STEREO);
 cs4208_fix_amp_caps(codec, 0x18);
 cs4208_fix_amp_caps(codec, 0x1b);
 cs4208_fix_amp_caps(codec, 0x1c);

 err = cs_parse_auto_config(codec);
 if (err < 0)
  goto error;

 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PROBE);

 return 0;

 error:
 cs_free(codec);
 return err;
}
