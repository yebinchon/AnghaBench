
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lola_stream {int dsd; } ;
struct lola {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 unsigned int LOLA_DSD_STS_FIFORDY ;
 int STS ;
 int dev_warn (int ,char*,int ) ;
 unsigned long jiffies ;
 unsigned int lola_dsd_read (struct lola*,int ,int ) ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int lola_stream_wait_for_fifo(struct lola *chip,
         struct lola_stream *str,
         bool ready)
{
 unsigned int val = ready ? LOLA_DSD_STS_FIFORDY : 0;
 unsigned long end_time = jiffies + msecs_to_jiffies(200);
 while (time_before(jiffies, end_time)) {
  unsigned int reg = lola_dsd_read(chip, str->dsd, STS);
  if ((reg & LOLA_DSD_STS_FIFORDY) == val)
   return 0;
  msleep(1);
 }
 dev_warn(chip->card->dev, "FIFO not ready (stream %d)\n", str->dsd);
 return -EIO;
}
