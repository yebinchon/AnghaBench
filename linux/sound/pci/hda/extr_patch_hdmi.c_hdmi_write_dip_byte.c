
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_VERB_SET_HDMI_DIP_DATA ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,unsigned char) ;

__attribute__((used)) static void hdmi_write_dip_byte(struct hda_codec *codec, hda_nid_t pin_nid,
    unsigned char val)
{
 snd_hda_codec_write(codec, pin_nid, 0, AC_VERB_SET_HDMI_DIP_DATA, val);
}
