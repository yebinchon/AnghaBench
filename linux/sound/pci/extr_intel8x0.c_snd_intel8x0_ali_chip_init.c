
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel8x0 {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int ALI_INTERRUPTSR ;
 int ALI_INT_GPIO ;
 int ALI_RTSR ;
 int ALI_SCR ;
 int EIO ;
 int HZ ;
 int ICHREG (int ) ;
 int dev_err (int ,char*) ;
 int do_ali_reset (struct intel8x0*) ;
 int igetdword (struct intel8x0*,int ) ;
 int iputdword (struct intel8x0*,int ,int) ;
 int schedule_timeout_uninterruptible (int) ;

__attribute__((used)) static int snd_intel8x0_ali_chip_init(struct intel8x0 *chip, int probing)
{
 u32 reg;
 int i = 0;

 reg = igetdword(chip, ICHREG(ALI_SCR));
 if ((reg & 2) == 0)
  reg |= 2;
 else
  reg |= 1;
 reg &= ~0x80000000;
 iputdword(chip, ICHREG(ALI_SCR), reg);

 for (i = 0; i < HZ / 2; i++) {
  if (! (igetdword(chip, ICHREG(ALI_INTERRUPTSR)) & ALI_INT_GPIO))
   goto __ok;
  schedule_timeout_uninterruptible(1);
 }
 dev_err(chip->card->dev, "AC'97 reset failed.\n");
 if (probing)
  return -EIO;

 __ok:
 for (i = 0; i < HZ / 2; i++) {
  reg = igetdword(chip, ICHREG(ALI_RTSR));
  if (reg & 0x80)
   break;
  iputdword(chip, ICHREG(ALI_RTSR), reg | 0x80);
  schedule_timeout_uninterruptible(1);
 }

 do_ali_reset(chip);
 return 0;
}
