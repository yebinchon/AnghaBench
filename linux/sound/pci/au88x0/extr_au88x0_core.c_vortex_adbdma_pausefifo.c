
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mmio; TYPE_2__* dma_adb; } ;
typedef TYPE_1__ vortex_t ;
struct TYPE_6__ {int fifo_status; int dma_unknown; int dma_ctrl; } ;
typedef TYPE_2__ stream_t ;


 int FIFO_PAUSE ;


 int VORTEX_ADBDMA_CTRL ;
 int hwwrite (int ,int ,int ) ;
 int vortex_fifo_setadbctrl (TYPE_1__*,int,int ,int,int,int ,int ) ;

__attribute__((used)) static void vortex_adbdma_pausefifo(vortex_t * vortex, int adbdma)
{
 stream_t *dma = &vortex->dma_adb[adbdma];

 int this_8 = 0, this_4 = 0;
 switch (dma->fifo_status) {
 case 129:
  vortex_fifo_setadbctrl(vortex, adbdma, dma->dma_unknown,
           this_4, this_8, 0, 0);
  break;
 case 128:
  hwwrite(vortex->mmio, VORTEX_ADBDMA_CTRL + (adbdma << 2),
   dma->dma_ctrl);
  vortex_fifo_setadbctrl(vortex, adbdma, dma->dma_unknown,
           this_4, this_8, 0, 0);
  break;
 }
 dma->fifo_status = FIFO_PAUSE;
}
