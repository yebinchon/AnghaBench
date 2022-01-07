
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct cs_spec* spec; } ;
struct cs_spec {int vendor_nid; } ;


 int AC_VERB_GET_PROC_COEF ;
 int AC_VERB_SET_COEF_INDEX ;
 int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,unsigned int) ;

__attribute__((used)) static inline int cs_vendor_coef_get(struct hda_codec *codec, unsigned int idx)
{
 struct cs_spec *spec = codec->spec;
 snd_hda_codec_write(codec, spec->vendor_nid, 0,
       AC_VERB_SET_COEF_INDEX, idx);
 return snd_hda_codec_read(codec, spec->vendor_nid, 0,
      AC_VERB_GET_PROC_COEF, 0);
}
