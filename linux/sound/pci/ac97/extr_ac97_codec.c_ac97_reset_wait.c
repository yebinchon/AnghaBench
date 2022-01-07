
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int scaps; } ;


 int AC97_EXTENDED_MID ;
 int AC97_REC_GAIN ;
 int AC97_RESET ;
 int AC97_SCAP_DETECT_BY_VENDOR ;
 int AC97_VENDOR_ID1 ;
 int AC97_VENDOR_ID2 ;
 int ENODEV ;
 int jiffies ;
 int schedule_timeout_uninterruptible (int) ;
 int snd_ac97_read (struct snd_ac97*,int ) ;
 int snd_ac97_write_cache (struct snd_ac97*,int ,int) ;
 scalar_t__ time_after_eq (unsigned long,int) ;

__attribute__((used)) static int ac97_reset_wait(struct snd_ac97 *ac97, int timeout, int with_modem)
{
 unsigned long end_time;
 unsigned short val;

 end_time = jiffies + timeout;
 do {


  snd_ac97_read(ac97, AC97_RESET);
  snd_ac97_read(ac97, AC97_VENDOR_ID1);
  snd_ac97_read(ac97, AC97_VENDOR_ID2);

  if (with_modem) {
   val = snd_ac97_read(ac97, AC97_EXTENDED_MID);
   if (val != 0xffff && (val & 1) != 0)
    return 0;
  }
  if (ac97->scaps & AC97_SCAP_DETECT_BY_VENDOR) {

   val = snd_ac97_read(ac97, AC97_VENDOR_ID1);
   if (val != 0 && val != 0xffff)
    return 0;
  } else {




   snd_ac97_write_cache(ac97, AC97_REC_GAIN, 0x8a05);
   if ((snd_ac97_read(ac97, AC97_REC_GAIN) & 0x7fff) == 0x0a05)
    return 0;
  }
  schedule_timeout_uninterruptible(1);
 } while (time_after_eq(end_time, jiffies));
 return -ENODEV;
}
