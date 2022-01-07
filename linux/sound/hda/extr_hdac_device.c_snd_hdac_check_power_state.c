
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_PWRST_ERROR ;
 int AC_VERB_GET_POWER_STATE ;
 unsigned int codec_read (struct hdac_device*,int ,int ,int ,int ) ;

bool snd_hdac_check_power_state(struct hdac_device *hdac,
  hda_nid_t nid, unsigned int target_state)
{
 unsigned int state = codec_read(hdac, nid, 0,
    AC_VERB_GET_POWER_STATE, 0);

 if (state & AC_PWRST_ERROR)
  return 1;
 state = (state >> 4) & 0x0f;
 return (state == target_state);
}
