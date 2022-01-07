
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel8x0 {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int GLOB_CNT ;
 int HZ ;
 int ICHREG (int ) ;
 unsigned int ICH_AC97COLD ;
 unsigned int ICH_AC97WARM ;
 unsigned int ICH_ACLINK ;
 unsigned int ICH_PCM_246_MASK ;
 int dev_err (int ,char*,unsigned int) ;
 unsigned int igetdword (struct intel8x0*,int ) ;
 int iputdword (struct intel8x0*,int ,unsigned int) ;
 int jiffies ;
 int schedule_timeout_uninterruptible (int) ;
 scalar_t__ time_after_eq (unsigned long,int) ;

__attribute__((used)) static int snd_intel8x0_ich_chip_reset(struct intel8x0 *chip)
{
 unsigned long end_time;
 unsigned int cnt;

 cnt = igetdword(chip, ICHREG(GLOB_CNT));
 cnt &= ~(ICH_ACLINK | ICH_PCM_246_MASK);

 cnt |= (cnt & ICH_AC97COLD) == 0 ? ICH_AC97COLD : ICH_AC97WARM;
 iputdword(chip, ICHREG(GLOB_CNT), cnt);
 end_time = (jiffies + (HZ / 4)) + 1;
 do {
  if ((igetdword(chip, ICHREG(GLOB_CNT)) & ICH_AC97WARM) == 0)
   return 0;
  schedule_timeout_uninterruptible(1);
 } while (time_after_eq(end_time, jiffies));
 dev_err(chip->card->dev, "AC'97 warm reset still in progress? [0x%x]\n",
     igetdword(chip, ICHREG(GLOB_CNT)));
 return -EIO;
}
