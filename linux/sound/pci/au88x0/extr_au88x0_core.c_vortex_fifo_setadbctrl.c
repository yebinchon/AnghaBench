
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int mmio; TYPE_1__* card; } ;
typedef TYPE_2__ vortex_t ;
struct TYPE_5__ {int dev; } ;


 int FIFO_BITS ;
 int FIFO_RDONLY ;
 int FIFO_SIZE ;
 int FIFO_U1 ;
 int FIFO_VALID ;
 scalar_t__ VORTEX_FIFO_ADBCTRL ;
 int dev_err (int ,char*) ;
 int hwread (int ,scalar_t__) ;
 int hwwrite (int ,scalar_t__,int) ;
 int vortex_fifo_clearadbdata (TYPE_2__*,int,int ) ;

__attribute__((used)) static void
vortex_fifo_setadbctrl(vortex_t * vortex, int fifo, int stereo, int priority,
         int empty, int valid, int f)
{
 int temp, lifeboat = 0;

 int this_4 = 0x2;





 do {
  temp = hwread(vortex->mmio, VORTEX_FIFO_ADBCTRL + (fifo << 2));
  if (lifeboat++ > 0xbb8) {
   dev_err(vortex->card->dev,
    "vortex_fifo_setadbctrl fail\n");
   break;
  }
 }
 while (temp & FIFO_RDONLY);



 if (valid) {
  if ((temp & FIFO_VALID) == 0) {

   vortex_fifo_clearadbdata(vortex, fifo, FIFO_SIZE);



   temp = (this_4 & 0x3f) << 0xc;

   temp = (temp & 0xfffffffd) | ((stereo & 1) << 1);
   temp = (temp & 0xfffffff3) | ((priority & 3) << 2);
   temp = (temp & 0xffffffef) | ((valid & 1) << 4);
   temp |= FIFO_U1;
   temp = (temp & 0xffffffdf) | ((empty & 1) << 5);
  }
 } else {
  if (temp & FIFO_VALID) {
  } else

   vortex_fifo_clearadbdata(vortex, fifo, FIFO_SIZE);
 }
 hwwrite(vortex->mmio, VORTEX_FIFO_ADBCTRL + (fifo << 2), temp);
 hwread(vortex->mmio, VORTEX_FIFO_ADBCTRL + (fifo << 2));
}
