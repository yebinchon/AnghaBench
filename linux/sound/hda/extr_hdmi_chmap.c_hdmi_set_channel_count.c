
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int dummy; } ;
typedef int hda_nid_t ;


 int AC_VERB_SET_CVT_CHAN_COUNT ;
 int hdmi_get_channel_count (struct hdac_device*,int ) ;
 int snd_hdac_codec_write (struct hdac_device*,int ,int ,int ,int) ;

__attribute__((used)) static void hdmi_set_channel_count(struct hdac_device *codec,
       hda_nid_t cvt_nid, int chs)
{
 if (chs != hdmi_get_channel_count(codec, cvt_nid))
  snd_hdac_codec_write(codec, cvt_nid, 0,
        AC_VERB_SET_CVT_CHAN_COUNT, chs - 1);
}
