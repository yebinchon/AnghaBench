
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pins; int (* func ) (struct hda_codec*,struct hda_fixup const*,int) ;int verbs; } ;
struct hda_fixup {int chain_id; int type; scalar_t__ chained_before; int chained; TYPE_1__ v; } ;
struct TYPE_4__ {int chip_name; } ;
struct hda_codec {char* fixup_name; TYPE_2__ core; struct hda_fixup* fixup_list; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int HDA_FIXUP_ACT_PROBE ;




 int codec_dbg (struct hda_codec*,char*,int ,char const*) ;
 int codec_err (struct hda_codec*,char*,int ,int) ;
 int set_pin_targets (struct hda_codec*,int ) ;
 int snd_hda_add_verbs (struct hda_codec*,int ) ;
 int snd_hda_apply_pincfgs (struct hda_codec*,int ) ;
 int stub1 (struct hda_codec*,struct hda_fixup const*,int) ;

__attribute__((used)) static void apply_fixup(struct hda_codec *codec, int id, int action, int depth)
{
 const char *modelname = codec->fixup_name;

 while (id >= 0) {
  const struct hda_fixup *fix = codec->fixup_list + id;

  if (++depth > 10)
   break;
  if (fix->chained_before)
   apply_fixup(codec, fix->chain_id, action, depth + 1);

  switch (fix->type) {
  case 129:
   if (action != HDA_FIXUP_ACT_PRE_PROBE || !fix->v.pins)
    break;
   codec_dbg(codec, "%s: Apply pincfg for %s\n",
        codec->core.chip_name, modelname);
   snd_hda_apply_pincfgs(codec, fix->v.pins);
   break;
  case 128:
   if (action != HDA_FIXUP_ACT_PROBE || !fix->v.verbs)
    break;
   codec_dbg(codec, "%s: Apply fix-verbs for %s\n",
        codec->core.chip_name, modelname);
   snd_hda_add_verbs(codec, fix->v.verbs);
   break;
  case 131:
   if (!fix->v.func)
    break;
   codec_dbg(codec, "%s: Apply fix-func for %s\n",
        codec->core.chip_name, modelname);
   fix->v.func(codec, fix, action);
   break;
  case 130:
   if (action != HDA_FIXUP_ACT_PROBE || !fix->v.pins)
    break;
   codec_dbg(codec, "%s: Apply pinctl for %s\n",
        codec->core.chip_name, modelname);
   set_pin_targets(codec, fix->v.pins);
   break;
  default:
   codec_err(codec, "%s: Invalid fixup type %d\n",
       codec->core.chip_name, fix->type);
   break;
  }
  if (!fix->chained || fix->chained_before)
   break;
  id = fix->chain_id;
 }
}
