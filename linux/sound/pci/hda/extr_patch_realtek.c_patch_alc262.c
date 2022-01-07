
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {int shared_mic_vref_pin; int beep_nid; int no_analog; } ;
struct alc_spec {TYPE_1__ gen; int shutup; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int HDA_FIXUP_ACT_PROBE ;
 int HDA_INPUT ;
 int alc262_fixup_models ;
 int alc262_fixup_tbl ;
 int alc262_fixups ;
 int alc262_parse_auto_config (struct hda_codec*) ;
 int alc_alloc_spec (struct hda_codec*,int) ;
 int alc_auto_parse_customize_define (struct hda_codec*) ;
 int alc_eapd_shutup ;
 int alc_fix_pll_init (struct hda_codec*,int,int,int) ;
 int alc_free (struct hda_codec*) ;
 int alc_pre_init (struct hda_codec*) ;
 int alc_update_coefex_idx (struct hda_codec*,int,int,int ,int) ;
 scalar_t__ has_cdefine_beep (struct hda_codec*) ;
 int set_beep_amp (struct alc_spec*,int,int,int ) ;
 int snd_hda_apply_fixup (struct hda_codec*,int ) ;
 int snd_hda_pick_fixup (struct hda_codec*,int ,int ,int ) ;

__attribute__((used)) static int patch_alc262(struct hda_codec *codec)
{
 struct alc_spec *spec;
 int err;

 err = alc_alloc_spec(codec, 0x0b);
 if (err < 0)
  return err;

 spec = codec->spec;
 spec->gen.shared_mic_vref_pin = 0x18;

 spec->shutup = alc_eapd_shutup;







 alc_fix_pll_init(codec, 0x20, 0x0a, 10);

 alc_pre_init(codec);

 snd_hda_pick_fixup(codec, alc262_fixup_models, alc262_fixup_tbl,
         alc262_fixups);
 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PRE_PROBE);

 alc_auto_parse_customize_define(codec);

 if (has_cdefine_beep(codec))
  spec->gen.beep_nid = 0x01;


 err = alc262_parse_auto_config(codec);
 if (err < 0)
  goto error;

 if (!spec->gen.no_analog && spec->gen.beep_nid) {
  err = set_beep_amp(spec, 0x0b, 0x05, HDA_INPUT);
  if (err < 0)
   goto error;
 }

 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PROBE);

 return 0;

 error:
 alc_free(codec);
 return err;
}
