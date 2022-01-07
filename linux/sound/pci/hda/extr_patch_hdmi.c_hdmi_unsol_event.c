
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 unsigned int AC_UNSOL_RES_SUBTAG ;
 unsigned int AC_UNSOL_RES_SUBTAG_SHIFT ;
 unsigned int AC_UNSOL_RES_TAG_SHIFT ;
 int codec_dbg (struct hda_codec*,char*,int) ;
 scalar_t__ codec_has_acomp (struct hda_codec*) ;
 int hdmi_intrinsic_event (struct hda_codec*,unsigned int) ;
 int hdmi_non_intrinsic_event (struct hda_codec*,unsigned int) ;
 int snd_hda_jack_tbl_get_from_tag (struct hda_codec*,int) ;

__attribute__((used)) static void hdmi_unsol_event(struct hda_codec *codec, unsigned int res)
{
 int tag = res >> AC_UNSOL_RES_TAG_SHIFT;
 int subtag = (res & AC_UNSOL_RES_SUBTAG) >> AC_UNSOL_RES_SUBTAG_SHIFT;

 if (codec_has_acomp(codec))
  return;

 if (!snd_hda_jack_tbl_get_from_tag(codec, tag)) {
  codec_dbg(codec, "Unexpected HDMI event tag 0x%x\n", tag);
  return;
 }

 if (subtag == 0)
  hdmi_intrinsic_event(codec, res);
 else
  hdmi_non_intrinsic_event(codec, res);
}
