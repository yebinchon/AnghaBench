
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atiixp_modem {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int ATI_REG_PHYS_OUT_ADDR_EN ;
 int EBUSY ;
 int PHYS_OUT_ADDR ;
 int atiixp_read (struct atiixp_modem*,int ) ;
 int dev_warn (int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static int snd_atiixp_acquire_codec(struct atiixp_modem *chip)
{
 int timeout = 1000;

 while (atiixp_read(chip, PHYS_OUT_ADDR) & ATI_REG_PHYS_OUT_ADDR_EN) {
  if (! timeout--) {
   dev_warn(chip->card->dev, "codec acquire timeout\n");
   return -EBUSY;
  }
  udelay(1);
 }
 return 0;
}
