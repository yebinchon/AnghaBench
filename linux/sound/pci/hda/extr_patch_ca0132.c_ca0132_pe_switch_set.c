
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int * effects_switch; } ;
typedef scalar_t__ hda_nid_t ;


 size_t EFFECT_START_NID ;
 scalar_t__ OUT_EFFECT_END_NID ;
 size_t OUT_EFFECT_START_NID ;
 size_t PLAY_ENHANCEMENT ;
 int ca0132_alt_select_out (struct hda_codec*) ;
 int ca0132_effects_set (struct hda_codec*,scalar_t__,int ) ;
 scalar_t__ ca0132_use_alt_functions (struct ca0132_spec*) ;
 int codec_dbg (struct hda_codec*,char*,int ) ;

__attribute__((used)) static int ca0132_pe_switch_set(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;
 hda_nid_t nid;
 int i, ret = 0;

 codec_dbg(codec, "ca0132_pe_switch_set: val=%ld\n",
      spec->effects_switch[PLAY_ENHANCEMENT - EFFECT_START_NID]);

 if (ca0132_use_alt_functions(spec))
  ca0132_alt_select_out(codec);

 i = OUT_EFFECT_START_NID - EFFECT_START_NID;
 nid = OUT_EFFECT_START_NID;

 for (; nid < OUT_EFFECT_END_NID; nid++, i++)
  ret |= ca0132_effects_set(codec, nid, spec->effects_switch[i]);

 return ret;
}
