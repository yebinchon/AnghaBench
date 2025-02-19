
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int codec_err (struct hda_codec*,char*) ;
 int codec_info (struct hda_codec*,char*) ;
 scalar_t__ dspload_is_loaded (struct hda_codec*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static bool dspload_wait_loaded(struct hda_codec *codec)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(2000);

 do {
  if (dspload_is_loaded(codec)) {
   codec_info(codec, "ca0132 DSP downloaded and running\n");
   return 1;
  }
  msleep(20);
 } while (time_before(jiffies, timeout));

 codec_err(codec, "ca0132 failed to download DSP\n");
 return 0;
}
