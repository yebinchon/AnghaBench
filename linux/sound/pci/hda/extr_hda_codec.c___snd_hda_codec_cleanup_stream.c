
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_cvt_setup {scalar_t__ active; } ;
struct hda_codec {scalar_t__ no_sticky_stream; } ;
typedef int hda_nid_t ;


 int codec_dbg (struct hda_codec*,char*,int ) ;
 struct hda_cvt_setup* get_hda_cvt_setup (struct hda_codec*,int ) ;
 int really_cleanup_stream (struct hda_codec*,struct hda_cvt_setup*) ;

void __snd_hda_codec_cleanup_stream(struct hda_codec *codec, hda_nid_t nid,
        int do_now)
{
 struct hda_cvt_setup *p;

 if (!nid)
  return;

 if (codec->no_sticky_stream)
  do_now = 1;

 codec_dbg(codec, "hda_codec_cleanup_stream: NID=0x%x\n", nid);
 p = get_hda_cvt_setup(codec, nid);
 if (p) {




  if (do_now)
   really_cleanup_stream(codec, p);
  else
   p->active = 0;
 }
}
