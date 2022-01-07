
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_jack_tbl {unsigned int tag; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_USRSP_EN ;
 int AC_VERB_SET_UNSOLICITED_ENABLE ;
 int snd_hda_codec_write_cache (struct hda_codec*,int ,int ,int ,unsigned int) ;
 int snd_hda_jack_detect_enable (struct hda_codec*,int ) ;
 struct hda_jack_tbl* snd_hda_jack_tbl_get (struct hda_codec*,int ) ;

__attribute__((used)) static void reprogram_jack_detect(struct hda_codec *codec, hda_nid_t nid,
      bool use_acomp)
{
 struct hda_jack_tbl *tbl;

 tbl = snd_hda_jack_tbl_get(codec, nid);
 if (tbl) {



  unsigned int val = use_acomp ? 0 : (AC_USRSP_EN | tbl->tag);
  snd_hda_codec_write_cache(codec, nid, 0,
       AC_VERB_SET_UNSOLICITED_ENABLE, val);
 } else {



  if (!use_acomp)
   snd_hda_jack_detect_enable(codec, nid);
 }
}
