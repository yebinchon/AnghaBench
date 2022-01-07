
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int dummy; } ;
typedef int hda_nid_t ;


 int AC_VERB_SET_HDMI_CHAN_SLOT ;
 int snd_hdac_codec_write (struct hdac_device*,int ,int ,int ,int) ;

__attribute__((used)) static int hdmi_pin_set_slot_channel(struct hdac_device *codec,
  hda_nid_t pin_nid, int asp_slot, int channel)
{
 return snd_hdac_codec_write(codec, pin_nid, 0,
    AC_VERB_SET_HDMI_CHAN_SLOT,
    (channel << 4) | asp_slot);
}
