
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_PWRST_ERROR ;
 int AC_VERB_SET_POWER_STATE ;
 int AC_WCAP_POWER ;
 int get_wcaps (struct hdac_device*,int ) ;
 int snd_hdac_check_power_state (struct hdac_device*,int ,unsigned int) ;
 int snd_hdac_codec_read (struct hdac_device*,int ,int ,int ,unsigned int) ;
 unsigned int snd_hdac_sync_power_state (struct hdac_device*,int ,unsigned int) ;

__attribute__((used)) static void hdac_hdmi_set_power_state(struct hdac_device *hdev,
        hda_nid_t nid, unsigned int pwr_state)
{
 int count;
 unsigned int state;

 if (get_wcaps(hdev, nid) & AC_WCAP_POWER) {
  if (!snd_hdac_check_power_state(hdev, nid, pwr_state)) {
   for (count = 0; count < 10; count++) {
    snd_hdac_codec_read(hdev, nid, 0,
      AC_VERB_SET_POWER_STATE,
      pwr_state);
    state = snd_hdac_sync_power_state(hdev,
      nid, pwr_state);
    if (!(state & AC_PWRST_ERROR))
     break;
   }
  }
 }
}
