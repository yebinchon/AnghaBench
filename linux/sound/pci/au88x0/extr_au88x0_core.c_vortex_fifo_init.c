
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int mmio; TYPE_1__* card; } ;
typedef TYPE_2__ vortex_t ;
typedef int u32 ;
struct TYPE_6__ {int dev; } ;


 int FIFO_SIZE ;
 int FIFO_U0 ;
 int FIFO_U1 ;
 int NR_ADB ;
 int NR_WT ;
 int VORTEX_FIFO_ADBCTRL ;
 int VORTEX_FIFO_WTCTRL ;
 int dev_err (int ,char*,...) ;
 int hwread (int ,int) ;
 int hwwrite (int ,int,int) ;
 int vortex_fifo_clearadbdata (TYPE_2__*,int,int ) ;
 int vortex_fifo_clearwtdata (TYPE_2__*,int,int ) ;

__attribute__((used)) static void vortex_fifo_init(vortex_t * vortex)
{
 int x;
 u32 addr;


 addr = VORTEX_FIFO_ADBCTRL + ((NR_ADB - 1) * 4);
 for (x = NR_ADB - 1; x >= 0; x--) {
  hwwrite(vortex->mmio, addr, (FIFO_U0 | FIFO_U1));
  if (hwread(vortex->mmio, addr) != (FIFO_U0 | FIFO_U1))
   dev_err(vortex->card->dev, "bad adb fifo reset!\n");
  vortex_fifo_clearadbdata(vortex, x, FIFO_SIZE);
  addr -= 4;
 }



 addr = VORTEX_FIFO_WTCTRL + ((NR_WT - 1) * 4);
 for (x = NR_WT - 1; x >= 0; x--) {
  hwwrite(vortex->mmio, addr, FIFO_U0);
  if (hwread(vortex->mmio, addr) != FIFO_U0)
   dev_err(vortex->card->dev,
    "bad wt fifo reset (0x%08x, 0x%08x)!\n",
    addr, hwread(vortex->mmio, addr));
  vortex_fifo_clearwtdata(vortex, x, FIFO_SIZE);
  addr -= 4;
 }
 hwwrite(vortex->mmio, 0x17008, 0x61);

}
