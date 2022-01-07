
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_PWRST_ERROR ;
 int AC_VERB_GET_POWER_STATE ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 unsigned int snd_hdac_codec_read (struct hdac_device*,int ,int ,int ,int ) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;

unsigned int snd_hdac_sync_power_state(struct hdac_device *codec,
   hda_nid_t nid, unsigned int power_state)
{
 unsigned long end_time = jiffies + msecs_to_jiffies(500);
 unsigned int state, actual_state, count;

 for (count = 0; count < 500; count++) {
  state = snd_hdac_codec_read(codec, nid, 0,
    AC_VERB_GET_POWER_STATE, 0);
  if (state & AC_PWRST_ERROR) {
   msleep(20);
   break;
  }
  actual_state = (state >> 4) & 0x0f;
  if (actual_state == power_state)
   break;
  if (time_after_eq(jiffies, end_time))
   break;

  msleep(1);
 }
 return state;
}
