
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ali {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int ALI_STIMER ;
 int EIO ;
 int dev_err (int ,char*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int schedule_timeout_uninterruptible (int) ;
 unsigned long snd_ali_5451_peek (struct snd_ali*,int ) ;
 int time_after_eq (unsigned long,unsigned long) ;

__attribute__((used)) static int snd_ali_stimer_ready(struct snd_ali *codec)
{
 unsigned long end_time;
 unsigned long dwChk1,dwChk2;

 dwChk1 = snd_ali_5451_peek(codec, ALI_STIMER);
 end_time = jiffies + msecs_to_jiffies(250);

 for (;;) {
  dwChk2 = snd_ali_5451_peek(codec, ALI_STIMER);
  if (dwChk2 != dwChk1)
   return 0;
  if (!time_after_eq(end_time, jiffies))
   break;
  schedule_timeout_uninterruptible(1);
 }

 dev_err(codec->card->dev, "ali_stimer_read: stimer is not ready.\n");
 return -EIO;
}
