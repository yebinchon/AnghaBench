
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int dummy; } ;
typedef int hda_nid_t ;


 int AC_VERB_SET_AMP_GAIN_MUTE ;
 int AC_WCAP_OUT_AMP ;
 int get_wcaps (struct hdac_device*,int ) ;
 int snd_hdac_codec_write (struct hdac_device*,int ,int ,int ,int) ;

__attribute__((used)) static void hdac_hdmi_set_amp(struct hdac_device *hdev,
       hda_nid_t nid, int val)
{
 if (get_wcaps(hdev, nid) & AC_WCAP_OUT_AMP)
  snd_hdac_codec_write(hdev, nid, 0,
     AC_VERB_SET_AMP_GAIN_MUTE, val);
}
