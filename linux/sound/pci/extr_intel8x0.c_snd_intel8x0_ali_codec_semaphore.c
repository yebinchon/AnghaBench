
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel8x0 {TYPE_1__* card; int in_ac97_init; scalar_t__ buggy_semaphore; } ;
struct TYPE_2__ {int dev; } ;


 int ALI_CAS ;
 int ALI_CAS_SEM_BUSY ;
 int ALI_CSPSR_CODEC_READY ;
 int ICHREG (int ) ;
 int dev_warn (int ,char*) ;
 int igetdword (struct intel8x0*,int ) ;
 int snd_intel8x0_ali_codec_ready (struct intel8x0*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int snd_intel8x0_ali_codec_semaphore(struct intel8x0 *chip)
{
 int time = 100;
 if (chip->buggy_semaphore)
  return 0;
 while (--time && (igetdword(chip, ICHREG(ALI_CAS)) & ALI_CAS_SEM_BUSY))
  udelay(1);
 if (! time && ! chip->in_ac97_init)
  dev_warn(chip->card->dev, "ali_codec_semaphore timeout\n");
 return snd_intel8x0_ali_codec_ready(chip, ALI_CSPSR_CODEC_READY);
}
