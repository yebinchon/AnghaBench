
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hda_codec {int inv_eapd; struct ad198x_spec* spec; } ;
struct TYPE_3__ {int no_share_stream; } ;
struct TYPE_4__ {int mixer_nid; int beep_nid; int* preferred_dacs; int auto_mute_via_amp; TYPE_1__ multiout; } ;
struct ad198x_spec {TYPE_2__ gen; } ;
typedef int hda_nid_t ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int HDA_FIXUP_ACT_PROBE ;
 int HDA_OUTPUT ;
 int ad1986a_fixup_models ;
 int ad1986a_fixup_tbl ;
 int ad1986a_fixups ;
 int ad198x_parse_auto_config (struct hda_codec*,int) ;
 int alloc_ad_spec (struct hda_codec*) ;
 int set_beep_amp (struct ad198x_spec*,int,int ,int ) ;
 int snd_hda_apply_fixup (struct hda_codec*,int ) ;
 int snd_hda_gen_free (struct hda_codec*) ;
 int snd_hda_pick_fixup (struct hda_codec*,int ,int ,int ) ;

__attribute__((used)) static int patch_ad1986a(struct hda_codec *codec)
{
 int err;
 struct ad198x_spec *spec;
 static hda_nid_t preferred_pairs[] = {
  0x1a, 0x03,
  0x1b, 0x03,
  0x1c, 0x04,
  0x1d, 0x05,
  0x1e, 0x03,
  0
 };

 err = alloc_ad_spec(codec);
 if (err < 0)
  return err;
 spec = codec->spec;


 codec->inv_eapd = 1;

 spec->gen.mixer_nid = 0x07;
 spec->gen.beep_nid = 0x19;
 set_beep_amp(spec, 0x18, 0, HDA_OUTPUT);







 spec->gen.multiout.no_share_stream = 1;

 spec->gen.preferred_dacs = preferred_pairs;


 spec->gen.auto_mute_via_amp = 1;

 snd_hda_pick_fixup(codec, ad1986a_fixup_models, ad1986a_fixup_tbl,
      ad1986a_fixups);
 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PRE_PROBE);

 err = ad198x_parse_auto_config(codec, 0);
 if (err < 0) {
  snd_hda_gen_free(codec);
  return err;
 }

 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PROBE);

 return 0;
}
