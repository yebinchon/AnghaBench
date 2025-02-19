
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {scalar_t__ voicefx_val; int * effects_switch; } ;
typedef scalar_t__ hda_nid_t ;


 size_t CRYSTAL_VOICE ;
 size_t EFFECT_START_NID ;
 scalar_t__ IN_EFFECT_END_NID ;
 size_t IN_EFFECT_START_NID ;
 int ca0132_alt_set_vipsource (struct hda_codec*,int) ;
 int ca0132_effects_set (struct hda_codec*,scalar_t__,int ) ;
 int ca0132_set_vipsource (struct hda_codec*,int) ;
 scalar_t__ ca0132_use_alt_functions (struct ca0132_spec*) ;
 int ca0132_voicefx_set (struct hda_codec*,int) ;
 int codec_dbg (struct hda_codec*,char*,int ) ;
 int resume_mic1 (struct hda_codec*,unsigned int) ;
 unsigned int stop_mic1 (struct hda_codec*) ;

__attribute__((used)) static int ca0132_cvoice_switch_set(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;
 hda_nid_t nid;
 int i, ret = 0;
 unsigned int oldval;

 codec_dbg(codec, "ca0132_cvoice_switch_set: val=%ld\n",
      spec->effects_switch[CRYSTAL_VOICE - EFFECT_START_NID]);

 i = IN_EFFECT_START_NID - EFFECT_START_NID;
 nid = IN_EFFECT_START_NID;

 for (; nid < IN_EFFECT_END_NID; nid++, i++)
  ret |= ca0132_effects_set(codec, nid, spec->effects_switch[i]);


 ret |= ca0132_voicefx_set(codec, (spec->voicefx_val ? 1 : 0));


 oldval = stop_mic1(codec);
 if (ca0132_use_alt_functions(spec))
  ret |= ca0132_alt_set_vipsource(codec, 1);
 else
  ret |= ca0132_set_vipsource(codec, 1);
 resume_mic1(codec, oldval);
 return ret;
}
