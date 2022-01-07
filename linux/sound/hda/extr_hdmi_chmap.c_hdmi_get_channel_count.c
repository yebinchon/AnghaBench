
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int dummy; } ;
typedef int hda_nid_t ;


 int AC_VERB_GET_CVT_CHAN_COUNT ;
 int snd_hdac_codec_read (struct hdac_device*,int ,int ,int ,int ) ;

__attribute__((used)) static int hdmi_get_channel_count(struct hdac_device *codec, hda_nid_t cvt_nid)
{
 return 1 + snd_hdac_codec_read(codec, cvt_nid, 0,
     AC_VERB_GET_CVT_CHAN_COUNT, 0);
}
