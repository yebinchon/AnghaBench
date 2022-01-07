
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int ATI_HBR_CAPABLE ;
 int ATI_HBR_ENABLE ;
 int ATI_VERB_GET_HBR_CONTROL ;
 int ATI_VERB_SET_HBR_CONTROL ;
 int EINVAL ;
 int codec_dbg (struct hda_codec*,char*,int ,char*,int) ;
 int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int) ;

__attribute__((used)) static int atihdmi_pin_hbr_setup(struct hda_codec *codec, hda_nid_t pin_nid,
     bool hbr)
{
 int hbr_ctl, hbr_ctl_new;

 hbr_ctl = snd_hda_codec_read(codec, pin_nid, 0, ATI_VERB_GET_HBR_CONTROL, 0);
 if (hbr_ctl >= 0 && (hbr_ctl & ATI_HBR_CAPABLE)) {
  if (hbr)
   hbr_ctl_new = hbr_ctl | ATI_HBR_ENABLE;
  else
   hbr_ctl_new = hbr_ctl & ~ATI_HBR_ENABLE;

  codec_dbg(codec,
     "atihdmi_pin_hbr_setup: NID=0x%x, %shbr-ctl=0x%x\n",
    pin_nid,
    hbr_ctl == hbr_ctl_new ? "" : "new-",
    hbr_ctl_new);

  if (hbr_ctl != hbr_ctl_new)
   snd_hda_codec_write(codec, pin_nid, 0,
      ATI_VERB_SET_HBR_CONTROL,
      hbr_ctl_new);

 } else if (hbr)
  return -EINVAL;

 return 0;
}
