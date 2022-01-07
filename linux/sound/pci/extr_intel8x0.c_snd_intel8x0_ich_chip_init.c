
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel8x0 {scalar_t__ device_type; unsigned int codec_isr_bits; int ncodecs; unsigned int* codec_bit; size_t* ac97_sdin; int pci; scalar_t__* ac97; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ DEVICE_NFORCE ;
 scalar_t__ DEVICE_SIS ;
 int EIO ;
 int GLOB_STA ;
 int HZ ;
 int ICHREG (int ) ;
 unsigned int ICH_MCINT ;
 unsigned int ICH_NVSPINT ;
 unsigned int ICH_PIINT ;
 unsigned int ICH_POINT ;
 unsigned int ICH_RCS ;
 int dev_err (int ,char*,unsigned int) ;
 unsigned int igetdword (struct intel8x0*,int ) ;
 int igetword (struct intel8x0*,int) ;
 int iputdword (struct intel8x0*,int ,unsigned int) ;
 int iputword (struct intel8x0*,int,int) ;
 int jiffies ;
 int pci_read_config_dword (int ,int,unsigned int*) ;
 int pci_write_config_dword (int ,int,unsigned int) ;
 int schedule_timeout_uninterruptible (int) ;
 scalar_t__ snd_intel8x0_ich_chip_can_cold_reset (struct intel8x0*) ;
 int snd_intel8x0_ich_chip_cold_reset (struct intel8x0*) ;
 int snd_intel8x0_ich_chip_reset (struct intel8x0*) ;
 int spdif_aclink ;
 scalar_t__ time_after_eq (unsigned long,int) ;

__attribute__((used)) static int snd_intel8x0_ich_chip_init(struct intel8x0 *chip, int probing)
{
 unsigned long end_time;
 unsigned int status, nstatus;
 unsigned int cnt;
 int err;



 status = ICH_RCS | ICH_MCINT | ICH_POINT | ICH_PIINT;
 if (chip->device_type == DEVICE_NFORCE)
  status |= ICH_NVSPINT;
 cnt = igetdword(chip, ICHREG(GLOB_STA));
 iputdword(chip, ICHREG(GLOB_STA), cnt & status);

 if (snd_intel8x0_ich_chip_can_cold_reset(chip))
  err = snd_intel8x0_ich_chip_cold_reset(chip);
 else
  err = snd_intel8x0_ich_chip_reset(chip);
 if (err < 0)
  return err;

 if (probing) {




  end_time = jiffies + HZ;
  do {
   status = igetdword(chip, ICHREG(GLOB_STA)) &
    chip->codec_isr_bits;
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


  end_time = jiffies + HZ / 4;
  while (status != chip->codec_isr_bits &&
         time_after_eq(end_time, jiffies)) {
   schedule_timeout_uninterruptible(1);
   status |= igetdword(chip, ICHREG(GLOB_STA)) &
    chip->codec_isr_bits;
  }

 } else {

  int i;
  status = 0;
  for (i = 0; i < chip->ncodecs; i++)
   if (chip->ac97[i])
    status |= chip->codec_bit[chip->ac97_sdin[i]];

  end_time = jiffies + HZ;
  do {
   nstatus = igetdword(chip, ICHREG(GLOB_STA)) &
    chip->codec_isr_bits;
   if (status == nstatus)
    break;
   schedule_timeout_uninterruptible(1);
  } while (time_after_eq(end_time, jiffies));
 }

 if (chip->device_type == DEVICE_SIS) {

  iputword(chip, 0x4c, igetword(chip, 0x4c) | 1);
 }
 if (chip->device_type == DEVICE_NFORCE && !spdif_aclink) {

  unsigned int val;
  pci_read_config_dword(chip->pci, 0x4c, &val);
  val |= 0x1000000;
  pci_write_config_dword(chip->pci, 0x4c, val);
 }
       return 0;
}
