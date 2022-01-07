
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int dummy; } ;
typedef int hda_nid_t ;


 int AC_VERB_SET_HDMI_DIP_INDEX ;
 int snd_hdac_codec_write (struct hdac_device*,int ,int ,int ,int) ;

__attribute__((used)) static void
hdac_hdmi_set_dip_index(struct hdac_device *hdev, hda_nid_t pin_nid,
    int packet_index, int byte_index)
{
 int val;

 val = (packet_index << 5) | (byte_index & 0x1f);
 snd_hdac_codec_write(hdev, pin_nid, 0, AC_VERB_SET_HDMI_DIP_INDEX, val);
}
