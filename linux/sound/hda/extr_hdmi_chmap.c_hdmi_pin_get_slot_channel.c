
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int dummy; } ;
typedef int hda_nid_t ;


 int AC_VERB_GET_HDMI_CHAN_SLOT ;
 int snd_hdac_codec_read (struct hdac_device*,int ,int ,int ,int) ;

__attribute__((used)) static int hdmi_pin_get_slot_channel(struct hdac_device *codec,
   hda_nid_t pin_nid, int asp_slot)
{
 return (snd_hdac_codec_read(codec, pin_nid, 0,
       AC_VERB_GET_HDMI_CHAN_SLOT,
       asp_slot) & 0xf0) >> 4;
}
