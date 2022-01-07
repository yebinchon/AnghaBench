
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int EIO ;
 int VENDOR_STATUS_DSPIO_BUSY ;
 int WIDGET_DSP_CTRL ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 int snd_hda_codec_read (struct hda_codec*,int ,int ,unsigned int,unsigned int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int dspio_send(struct hda_codec *codec, unsigned int reg,
        unsigned int data)
{
 int res;
 unsigned long timeout = jiffies + msecs_to_jiffies(1000);


 do {
  res = snd_hda_codec_read(codec, WIDGET_DSP_CTRL, 0, reg, data);
  if ((res >= 0) && (res != VENDOR_STATUS_DSPIO_BUSY))
   return res;
  msleep(20);
 } while (time_before(jiffies, timeout));

 return -EIO;
}
