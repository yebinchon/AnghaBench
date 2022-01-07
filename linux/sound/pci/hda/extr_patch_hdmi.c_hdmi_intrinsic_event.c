
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_jack_tbl {int jack_dirty; int nid; } ;
struct hda_codec {int addr; } ;


 unsigned int AC_UNSOL_RES_DE ;
 unsigned int AC_UNSOL_RES_DE_SHIFT ;
 unsigned int AC_UNSOL_RES_ELDV ;
 unsigned int AC_UNSOL_RES_IA ;
 unsigned int AC_UNSOL_RES_PD ;
 unsigned int AC_UNSOL_RES_TAG_SHIFT ;
 int check_presence_and_report (struct hda_codec*,int ,int ) ;
 int codec_dbg (struct hda_codec*,char*,int ,int ,int,int,int,int) ;
 struct hda_jack_tbl* snd_hda_jack_tbl_get_from_tag (struct hda_codec*,int) ;

__attribute__((used)) static void hdmi_intrinsic_event(struct hda_codec *codec, unsigned int res)
{
 int tag = res >> AC_UNSOL_RES_TAG_SHIFT;
 struct hda_jack_tbl *jack;
 int dev_entry = (res & AC_UNSOL_RES_DE) >> AC_UNSOL_RES_DE_SHIFT;







 jack = snd_hda_jack_tbl_get_from_tag(codec, tag);
 if (!jack)
  return;
 jack->jack_dirty = 1;

 codec_dbg(codec,
  "HDMI hot plug event: Codec=%d Pin=%d Device=%d Inactive=%d Presence_Detect=%d ELD_Valid=%d\n",
  codec->addr, jack->nid, dev_entry, !!(res & AC_UNSOL_RES_IA),
  !!(res & AC_UNSOL_RES_PD), !!(res & AC_UNSOL_RES_ELDV));


 check_presence_and_report(codec, jack->nid, 0);
}
