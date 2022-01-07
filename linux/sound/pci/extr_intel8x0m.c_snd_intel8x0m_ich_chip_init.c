
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel8x0m {scalar_t__ device_type; TYPE_2__* ac97; TYPE_1__* card; } ;
struct TYPE_4__ {int num; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ DEVICE_SIS ;
 int EIO ;
 int GLOB_CNT ;
 int GLOB_STA ;
 int HZ ;
 int ICHREG (int ) ;
 unsigned int ICH_AC97COLD ;
 unsigned int ICH_AC97WARM ;
 unsigned int ICH_ACLINK ;
 unsigned int ICH_MIINT ;
 unsigned int ICH_MOINT ;
 unsigned int ICH_PCR ;
 unsigned int ICH_RCS ;
 unsigned int ICH_SCR ;
 unsigned int ICH_TCR ;
 int dev_err (int ,char*,unsigned int) ;
 unsigned int get_ich_codec_bit (struct intel8x0m*,int ) ;
 unsigned int igetdword (struct intel8x0m*,int ) ;
 int igetword (struct intel8x0m*,int) ;
 int iputdword (struct intel8x0m*,int ,unsigned int) ;
 int iputword (struct intel8x0m*,int,int) ;
 int jiffies ;
 int schedule_timeout_uninterruptible (int) ;
 scalar_t__ time_after_eq (unsigned long,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int snd_intel8x0m_ich_chip_init(struct intel8x0m *chip, int probing)
{
 unsigned long end_time;
 unsigned int cnt, status, nstatus;



 status = ICH_RCS | ICH_MIINT | ICH_MOINT;
 cnt = igetdword(chip, ICHREG(GLOB_STA));
 iputdword(chip, ICHREG(GLOB_STA), cnt & status);


 cnt = igetdword(chip, ICHREG(GLOB_CNT));
 cnt &= ~(ICH_ACLINK);

 cnt |= (cnt & ICH_AC97COLD) == 0 ? ICH_AC97COLD : ICH_AC97WARM;
 iputdword(chip, ICHREG(GLOB_CNT), cnt);
 usleep_range(500, 1000);
 end_time = jiffies + HZ / 4;
 do {
  if ((igetdword(chip, ICHREG(GLOB_CNT)) & ICH_AC97WARM) == 0)
   goto __ok;
  schedule_timeout_uninterruptible(1);
 } while (time_after_eq(end_time, jiffies));
 dev_err(chip->card->dev, "AC'97 warm reset still in progress? [0x%x]\n",
     igetdword(chip, ICHREG(GLOB_CNT)));
 return -EIO;

      __ok:
 if (probing) {




  end_time = jiffies + HZ;
  do {
   status = igetdword(chip, ICHREG(GLOB_STA)) &
    (ICH_PCR | ICH_SCR | ICH_TCR);
   if (status)
    break;
   schedule_timeout_uninterruptible(1);
  } while (time_after_eq(end_time, jiffies));
  if (! status) {

   dev_err(chip->card->dev,
    "codec_ready: codec is not ready [0x%x]\n",
       igetdword(chip, ICHREG(GLOB_STA)));
   return -EIO;
  }


  nstatus = ICH_PCR | ICH_SCR;


  end_time = jiffies + HZ / 4;
  while (status != nstatus && time_after_eq(end_time, jiffies)) {
   schedule_timeout_uninterruptible(1);
   status |= igetdword(chip, ICHREG(GLOB_STA)) & nstatus;
  }

 } else {

  status = 0;
  if (chip->ac97)
   status |= get_ich_codec_bit(chip, chip->ac97->num);

  end_time = jiffies + HZ;
  do {
   nstatus = igetdword(chip, ICHREG(GLOB_STA)) &
    (ICH_PCR | ICH_SCR | ICH_TCR);
   if (status == nstatus)
    break;
   schedule_timeout_uninterruptible(1);
  } while (time_after_eq(end_time, jiffies));
 }

 if (chip->device_type == DEVICE_SIS) {

  iputword(chip, 0x4c, igetword(chip, 0x4c) | 1);
 }

       return 0;
}
