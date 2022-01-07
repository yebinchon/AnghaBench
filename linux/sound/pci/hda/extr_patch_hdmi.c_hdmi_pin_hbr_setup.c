
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_PINCAP_HBR ;
 int AC_PINCTL_EPT ;
 int AC_PINCTL_EPT_HBR ;
 int AC_PINCTL_EPT_NATIVE ;
 int AC_VERB_GET_PIN_WIDGET_CONTROL ;
 int AC_VERB_SET_PIN_WIDGET_CONTROL ;
 int EINVAL ;
 int codec_dbg (struct hda_codec*,char*,int ,char*,int) ;
 int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int) ;
 int snd_hda_query_pin_caps (struct hda_codec*,int ) ;

__attribute__((used)) static int hdmi_pin_hbr_setup(struct hda_codec *codec, hda_nid_t pin_nid,
         bool hbr)
{
 int pinctl, new_pinctl;

 if (snd_hda_query_pin_caps(codec, pin_nid) & AC_PINCAP_HBR) {
  pinctl = snd_hda_codec_read(codec, pin_nid, 0,
         AC_VERB_GET_PIN_WIDGET_CONTROL, 0);

  if (pinctl < 0)
   return hbr ? -EINVAL : 0;

  new_pinctl = pinctl & ~AC_PINCTL_EPT;
  if (hbr)
   new_pinctl |= AC_PINCTL_EPT_HBR;
  else
   new_pinctl |= AC_PINCTL_EPT_NATIVE;

  codec_dbg(codec,
     "hdmi_pin_hbr_setup: NID=0x%x, %spinctl=0x%x\n",
       pin_nid,
       pinctl == new_pinctl ? "" : "new-",
       new_pinctl);

  if (pinctl != new_pinctl)
   snd_hda_codec_write(codec, pin_nid, 0,
         AC_VERB_SET_PIN_WIDGET_CONTROL,
         new_pinctl);
 } else if (hbr)
  return -EINVAL;

 return 0;
}
