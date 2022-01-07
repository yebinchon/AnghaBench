
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_ymfpci {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int YDSXGR_PRISTATUSADR ;
 int YDSXGR_SECSTATUSADR ;
 int dev_err (int ,char*,int,int) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int schedule_timeout_uninterruptible (int) ;
 int snd_ymfpci_readw (struct snd_ymfpci*,int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int snd_ymfpci_codec_ready(struct snd_ymfpci *chip, int secondary)
{
 unsigned long end_time;
 u32 reg = secondary ? YDSXGR_SECSTATUSADR : YDSXGR_PRISTATUSADR;

 end_time = jiffies + msecs_to_jiffies(750);
 do {
  if ((snd_ymfpci_readw(chip, reg) & 0x8000) == 0)
   return 0;
  schedule_timeout_uninterruptible(1);
 } while (time_before(jiffies, end_time));
 dev_err(chip->card->dev,
  "codec_ready: codec %i is not ready [0x%x]\n",
  secondary, snd_ymfpci_readw(chip, reg));
 return -EBUSY;
}
