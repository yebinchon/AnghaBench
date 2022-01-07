
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct cs_spec* spec; } ;
struct cs_spec {int vendor_nid; } ;


 int AC_VERB_SET_COEF_INDEX ;
 int AC_VERB_SET_PROC_COEF ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,unsigned int) ;

__attribute__((used)) static inline void cs_vendor_coef_set(struct hda_codec *codec, unsigned int idx,
          unsigned int coef)
{
 struct cs_spec *spec = codec->spec;
 snd_hda_codec_write(codec, spec->vendor_nid, 0,
       AC_VERB_SET_COEF_INDEX, idx);
 snd_hda_codec_write(codec, spec->vendor_nid, 0,
       AC_VERB_SET_PROC_COEF, coef);
}
