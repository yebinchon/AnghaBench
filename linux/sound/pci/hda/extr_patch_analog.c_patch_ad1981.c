
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {struct ad198x_spec* spec; } ;
struct TYPE_2__ {int mixer_nid; int beep_nid; } ;
struct ad198x_spec {TYPE_1__ gen; } ;


 int ENOMEM ;
 int HDA_FIXUP_ACT_PRE_PROBE ;
 int HDA_FIXUP_ACT_PROBE ;
 int HDA_OUTPUT ;
 int ad1981_fixup_tbl ;
 int ad1981_fixups ;
 int ad1983_add_spdif_mux_ctl (struct hda_codec*) ;
 int ad198x_parse_auto_config (struct hda_codec*,int) ;
 int alloc_ad_spec (struct hda_codec*) ;
 int set_beep_amp (struct ad198x_spec*,int,int ,int ) ;
 int snd_hda_apply_fixup (struct hda_codec*,int ) ;
 int snd_hda_gen_free (struct hda_codec*) ;
 int snd_hda_pick_fixup (struct hda_codec*,int *,int ,int ) ;

__attribute__((used)) static int patch_ad1981(struct hda_codec *codec)
{
 struct ad198x_spec *spec;
 int err;

 err = alloc_ad_spec(codec);
 if (err < 0)
  return -ENOMEM;
 spec = codec->spec;

 spec->gen.mixer_nid = 0x0e;
 spec->gen.beep_nid = 0x10;
 set_beep_amp(spec, 0x0d, 0, HDA_OUTPUT);

 snd_hda_pick_fixup(codec, ((void*)0), ad1981_fixup_tbl, ad1981_fixups);
 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PRE_PROBE);

 err = ad198x_parse_auto_config(codec, 0);
 if (err < 0)
  goto error;
 err = ad1983_add_spdif_mux_ctl(codec);
 if (err < 0)
  goto error;

 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PROBE);

 return 0;

 error:
 snd_hda_gen_free(codec);
 return err;
}
