
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_VERB_GET_HDMI_DIP_SIZE ;
 int codec_dbg (struct hda_codec*,char*,int,int,int) ;
 int hdmi_get_dip_index (struct hda_codec*,int ,int*,int*) ;
 int hdmi_set_dip_index (struct hda_codec*,int ,int,int) ;
 int hdmi_write_dip_byte (struct hda_codec*,int ,int) ;
 int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int) ;

__attribute__((used)) static void hdmi_clear_dip_buffers(struct hda_codec *codec, hda_nid_t pin_nid)
{
}
