
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel8x0 {scalar_t__ device_type; unsigned int bdbars_count; TYPE_2__* ichd; TYPE_1__* card; } ;
struct TYPE_4__ {int bdbar_addr; scalar_t__ reg_offset; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ DEVICE_ALI ;
 scalar_t__ ICH_REG_OFF_BDBAR ;
 scalar_t__ ICH_REG_OFF_CR ;
 int ICH_RESETREGS ;
 int dev_err (int ,char*) ;
 int iagetword (struct intel8x0*,int ) ;
 int igetbyte (struct intel8x0*,scalar_t__) ;
 int iputbyte (struct intel8x0*,scalar_t__,int) ;
 int iputdword (struct intel8x0*,scalar_t__,int ) ;
 int snd_intel8x0_ali_chip_init (struct intel8x0*,int) ;
 int snd_intel8x0_ich_chip_init (struct intel8x0*,int) ;

__attribute__((used)) static int snd_intel8x0_chip_init(struct intel8x0 *chip, int probing)
{
 unsigned int i, timeout;
 int err;

 if (chip->device_type != DEVICE_ALI) {
  if ((err = snd_intel8x0_ich_chip_init(chip, probing)) < 0)
   return err;
  iagetword(chip, 0);
 } else {
  if ((err = snd_intel8x0_ali_chip_init(chip, probing)) < 0)
   return err;
 }


 for (i = 0; i < chip->bdbars_count; i++)
  iputbyte(chip, ICH_REG_OFF_CR + chip->ichd[i].reg_offset, 0x00);

 for (i = 0; i < chip->bdbars_count; i++)
  iputbyte(chip, ICH_REG_OFF_CR + chip->ichd[i].reg_offset, ICH_RESETREGS);
 for (i = 0; i < chip->bdbars_count; i++) {
         timeout = 100000;
         while (--timeout != 0) {
          if ((igetbyte(chip, ICH_REG_OFF_CR + chip->ichd[i].reg_offset) & ICH_RESETREGS) == 0)
                  break;
                }
                if (timeout == 0)
   dev_err(chip->card->dev, "reset of registers failed?\n");
        }

 for (i = 0; i < chip->bdbars_count; i++)
  iputdword(chip, ICH_REG_OFF_BDBAR + chip->ichd[i].reg_offset,
     chip->ichd[i].bdbar_addr);
 return 0;
}
