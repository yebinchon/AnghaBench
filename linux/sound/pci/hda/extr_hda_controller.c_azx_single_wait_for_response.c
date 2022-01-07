
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct azx {TYPE_2__* card; } ;
struct TYPE_4__ {int* res; } ;
struct TYPE_6__ {TYPE_1__ rirb; } ;
struct TYPE_5__ {int dev; } ;


 int AZX_IRS_VALID ;
 int EIO ;
 int IR ;
 int IRS ;
 TYPE_3__* azx_bus (struct azx*) ;
 int azx_readl (struct azx*,int ) ;
 int azx_readw (struct azx*,int ) ;
 int dev_dbg (int ,char*,int) ;
 scalar_t__ printk_ratelimit () ;
 int udelay (int) ;

__attribute__((used)) static int azx_single_wait_for_response(struct azx *chip, unsigned int addr)
{
 int timeout = 50;

 while (timeout--) {

  if (azx_readw(chip, IRS) & AZX_IRS_VALID) {

   azx_bus(chip)->rirb.res[addr] = azx_readl(chip, IR);
   return 0;
  }
  udelay(1);
 }
 if (printk_ratelimit())
  dev_dbg(chip->card->dev, "get_response timeout: IRS=0x%x\n",
   azx_readw(chip, IRS));
 azx_bus(chip)->rirb.res[addr] = -1;
 return -EIO;
}
