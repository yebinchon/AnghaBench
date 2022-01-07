
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {int beep_nid; int no_analog; } ;
struct alc_spec {TYPE_1__ gen; int power_hook; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int HDA_FIXUP_ACT_PROBE ;
 int HDA_OUTPUT ;
 int alc861_fixup_tbl ;
 int alc861_fixups ;
 int alc861_parse_auto_config (struct hda_codec*) ;
 int alc_alloc_spec (struct hda_codec*,int) ;
 int alc_free (struct hda_codec*) ;
 int alc_power_eapd ;
 int alc_pre_init (struct hda_codec*) ;
 scalar_t__ has_cdefine_beep (struct hda_codec*) ;
 int set_beep_amp (struct alc_spec*,int,int ,int ) ;
 int snd_hda_apply_fixup (struct hda_codec*,int ) ;
 int snd_hda_pick_fixup (struct hda_codec*,int *,int ,int ) ;

__attribute__((used)) static int patch_alc861(struct hda_codec *codec)
{
 struct alc_spec *spec;
 int err;

 err = alc_alloc_spec(codec, 0x15);
 if (err < 0)
  return err;

 spec = codec->spec;
 if (has_cdefine_beep(codec))
  spec->gen.beep_nid = 0x23;





 alc_pre_init(codec);

 snd_hda_pick_fixup(codec, ((void*)0), alc861_fixup_tbl, alc861_fixups);
 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PRE_PROBE);


 err = alc861_parse_auto_config(codec);
 if (err < 0)
  goto error;

 if (!spec->gen.no_analog) {
  err = set_beep_amp(spec, 0x23, 0, HDA_OUTPUT);
  if (err < 0)
   goto error;
 }

 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PROBE);

 return 0;

 error:
 alc_free(codec);
 return err;
}
