
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel8x0 {TYPE_1__* card; int in_ac97_init; } ;
struct TYPE_2__ {int dev; } ;


 int ALI_CSPSR ;
 int EBUSY ;
 int ICHREG (int ) ;
 int dev_warn (int ,char*) ;
 int igetbyte (struct intel8x0*,int ) ;

__attribute__((used)) static int snd_intel8x0_ali_codec_ready(struct intel8x0 *chip, int mask)
{
 int count = 0;
 for (count = 0; count < 0x7f; count++) {
  int val = igetbyte(chip, ICHREG(ALI_CSPSR));
  if (val & mask)
   return 0;
 }
 if (! chip->in_ac97_init)
  dev_warn(chip->card->dev, "AC97 codec ready timeout.\n");
 return -EBUSY;
}
