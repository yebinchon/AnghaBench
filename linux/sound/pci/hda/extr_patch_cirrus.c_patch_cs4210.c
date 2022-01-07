
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {int patch_ops; } ;
struct TYPE_2__ {int automute_hook; } ;
struct cs_spec {TYPE_1__ gen; } ;


 int CS4210_VENDOR_NID ;
 int ENOMEM ;
 int HDA_FIXUP_ACT_PRE_PROBE ;
 int HDA_FIXUP_ACT_PROBE ;
 int cs4210_pinmux_init (struct hda_codec*) ;
 int cs421x_fixup_tbl ;
 int cs421x_fixups ;
 int cs421x_models ;
 int cs421x_parse_auto_config (struct hda_codec*) ;
 int cs421x_patch_ops ;
 struct cs_spec* cs_alloc_spec (struct hda_codec*,int ) ;
 int cs_automute ;
 int cs_free (struct hda_codec*) ;
 int snd_hda_apply_fixup (struct hda_codec*,int ) ;
 int snd_hda_pick_fixup (struct hda_codec*,int ,int ,int ) ;

__attribute__((used)) static int patch_cs4210(struct hda_codec *codec)
{
 struct cs_spec *spec;
 int err;

 spec = cs_alloc_spec(codec, CS4210_VENDOR_NID);
 if (!spec)
  return -ENOMEM;

 codec->patch_ops = cs421x_patch_ops;
 spec->gen.automute_hook = cs_automute;

 snd_hda_pick_fixup(codec, cs421x_models, cs421x_fixup_tbl,
      cs421x_fixups);
 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PRE_PROBE);






 cs4210_pinmux_init(codec);

 err = cs421x_parse_auto_config(codec);
 if (err < 0)
  goto error;

 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PROBE);

 return 0;

 error:
 cs_free(codec);
 return err;
}
