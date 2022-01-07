
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_fixup {int dummy; } ;
struct hda_codec {int core; struct conexant_spec* spec; } ;
struct TYPE_2__ {int (* automute_hook ) (struct hda_codec*) ;int cap_sync_hook; } ;
struct conexant_spec {TYPE_1__ gen; int parse_flags; } ;





 int HDA_PINCFG_HEADPHONE_MIC ;
 int WARN_ON (int ) ;
 int cxt_update_headset_mode (struct hda_codec*) ;
 int cxt_update_headset_mode_hook ;
 int snd_hdac_regmap_add_vendor_verb (int *,int) ;

__attribute__((used)) static void cxt_fixup_headphone_mic(struct hda_codec *codec,
        const struct hda_fixup *fix, int action)
{
 struct conexant_spec *spec = codec->spec;

 switch (action) {
 case 129:
  spec->parse_flags |= HDA_PINCFG_HEADPHONE_MIC;
  snd_hdac_regmap_add_vendor_verb(&codec->core, 0x410);
  break;
 case 128:
  WARN_ON(spec->gen.cap_sync_hook);
  spec->gen.cap_sync_hook = cxt_update_headset_mode_hook;
  spec->gen.automute_hook = cxt_update_headset_mode;
  break;
 case 130:
  cxt_update_headset_mode(codec);
  break;
 }
}
