
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int vendor_id; } ;
struct hda_codec {TYPE_5__ core; TYPE_2__* bus; struct alc_spec* spec; } ;
struct TYPE_9__ {int beep_nid; int no_analog; } ;
struct TYPE_8__ {int platform_type; } ;
struct alc_spec {TYPE_4__ gen; TYPE_3__ cdefine; int init_hook; int parse_flags; int shutup; } ;
struct TYPE_7__ {TYPE_1__* pci; } ;
struct TYPE_6__ {int subsystem_vendor; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int HDA_FIXUP_ACT_PROBE ;
 int HDA_INPUT ;
 int HDA_PINCFG_NO_HP_FIXUP ;
 int alc662_fixup_models ;
 int alc662_fixup_tbl ;
 int alc662_fixups ;
 int alc662_parse_auto_config (struct hda_codec*) ;
 int alc662_pin_fixup_tbl ;
 int alc668_restore_default_value ;
 int alc_alloc_spec (struct hda_codec*,int) ;
 int alc_auto_parse_customize_define (struct hda_codec*) ;
 int alc_codec_rename (struct hda_codec*,char*) ;
 int alc_eapd_shutup ;
 int alc_fix_pll_init (struct hda_codec*,int,int,int) ;
 int alc_free (struct hda_codec*) ;
 int alc_get_coef0 (struct hda_codec*) ;
 int alc_pre_init (struct hda_codec*) ;
 scalar_t__ has_cdefine_beep (struct hda_codec*) ;
 int set_beep_amp (struct alc_spec*,int,int,int ) ;
 int snd_hda_apply_fixup (struct hda_codec*,int ) ;
 int snd_hda_pick_fixup (struct hda_codec*,int ,int ,int ) ;
 int snd_hda_pick_pin_fixup (struct hda_codec*,int ,int ,int) ;

__attribute__((used)) static int patch_alc662(struct hda_codec *codec)
{
 struct alc_spec *spec;
 int err;

 err = alc_alloc_spec(codec, 0x0b);
 if (err < 0)
  return err;

 spec = codec->spec;

 spec->shutup = alc_eapd_shutup;


 spec->parse_flags = HDA_PINCFG_NO_HP_FIXUP;

 alc_fix_pll_init(codec, 0x20, 0x04, 15);

 switch (codec->core.vendor_id) {
 case 0x10ec0668:
  spec->init_hook = alc668_restore_default_value;
  break;
 }

 alc_pre_init(codec);

 snd_hda_pick_fixup(codec, alc662_fixup_models,
         alc662_fixup_tbl, alc662_fixups);
 snd_hda_pick_pin_fixup(codec, alc662_pin_fixup_tbl, alc662_fixups, 1);
 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PRE_PROBE);

 alc_auto_parse_customize_define(codec);

 if (has_cdefine_beep(codec))
  spec->gen.beep_nid = 0x01;

 if ((alc_get_coef0(codec) & (1 << 14)) &&
     codec->bus->pci && codec->bus->pci->subsystem_vendor == 0x1025 &&
     spec->cdefine.platform_type == 1) {
  err = alc_codec_rename(codec, "ALC272X");
  if (err < 0)
   goto error;
 }


 err = alc662_parse_auto_config(codec);
 if (err < 0)
  goto error;

 if (!spec->gen.no_analog && spec->gen.beep_nid) {
  switch (codec->core.vendor_id) {
  case 0x10ec0662:
   err = set_beep_amp(spec, 0x0b, 0x05, HDA_INPUT);
   break;
  case 0x10ec0272:
  case 0x10ec0663:
  case 0x10ec0665:
  case 0x10ec0668:
   err = set_beep_amp(spec, 0x0b, 0x04, HDA_INPUT);
   break;
  case 0x10ec0273:
   err = set_beep_amp(spec, 0x0b, 0x03, HDA_INPUT);
   break;
  }
  if (err < 0)
   goto error;
 }

 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PROBE);

 return 0;

 error:
 alc_free(codec);
 return err;
}
