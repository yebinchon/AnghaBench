
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ali {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int dev_dbg (int ,char*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int schedule_timeout_uninterruptible (int) ;
 unsigned int snd_ali_5451_peek (struct snd_ali*,unsigned int) ;
 int snd_ali_5451_poke (struct snd_ali*,unsigned int,unsigned int) ;
 int time_after_eq (unsigned long,unsigned long) ;

__attribute__((used)) static int snd_ali_codec_ready(struct snd_ali *codec,
          unsigned int port)
{
 unsigned long end_time;
 unsigned int res;

 end_time = jiffies + msecs_to_jiffies(250);

 for (;;) {
  res = snd_ali_5451_peek(codec,port);
  if (!(res & 0x8000))
   return 0;
  if (!time_after_eq(end_time, jiffies))
   break;
  schedule_timeout_uninterruptible(1);
 }

 snd_ali_5451_poke(codec, port, res & ~0x8000);
 dev_dbg(codec->card->dev, "ali_codec_ready: codec is not ready.\n ");
 return -EIO;
}
