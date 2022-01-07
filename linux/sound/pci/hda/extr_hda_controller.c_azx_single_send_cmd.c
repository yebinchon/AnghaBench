
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hdac_bus {int * last_cmd; } ;
struct azx {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int AZX_IRS_BUSY ;
 int AZX_IRS_VALID ;
 int EIO ;
 int IC ;
 int IRS ;
 size_t azx_command_addr (int ) ;
 int azx_readw (struct azx*,int ) ;
 int azx_single_wait_for_response (struct azx*,unsigned int) ;
 int azx_writel (struct azx*,int ,int ) ;
 int azx_writew (struct azx*,int ,int) ;
 struct azx* bus_to_azx (struct hdac_bus*) ;
 int dev_dbg (int ,char*,int,int ) ;
 scalar_t__ printk_ratelimit () ;
 int udelay (int) ;

__attribute__((used)) static int azx_single_send_cmd(struct hdac_bus *bus, u32 val)
{
 struct azx *chip = bus_to_azx(bus);
 unsigned int addr = azx_command_addr(val);
 int timeout = 50;

 bus->last_cmd[azx_command_addr(val)] = val;
 while (timeout--) {

  if (!((azx_readw(chip, IRS) & AZX_IRS_BUSY))) {

   azx_writew(chip, IRS, azx_readw(chip, IRS) |
       AZX_IRS_VALID);
   azx_writel(chip, IC, val);
   azx_writew(chip, IRS, azx_readw(chip, IRS) |
       AZX_IRS_BUSY);
   return azx_single_wait_for_response(chip, addr);
  }
  udelay(1);
 }
 if (printk_ratelimit())
  dev_dbg(chip->card->dev,
   "send_cmd timeout: IRS=0x%x, val=0x%x\n",
   azx_readw(chip, IRS), val);
 return -EIO;
}
