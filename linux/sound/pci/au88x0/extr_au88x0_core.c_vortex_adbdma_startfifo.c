
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int mmio; TYPE_2__* dma_adb; } ;
typedef TYPE_1__ vortex_t ;
struct TYPE_7__ {int fifo_status; int fifo_enabled; int dma_unknown; int dma_ctrl; } ;
typedef TYPE_2__ stream_t ;





 int VORTEX_ADBDMA_CTRL ;
 int hwwrite (int ,int ,int ) ;
 int vortex_fifo_setadbctrl (TYPE_1__*,int,int ,int,int,int,int ) ;
 int vortex_fifo_setadbvalid (TYPE_1__*,int,int) ;

__attribute__((used)) static void vortex_adbdma_startfifo(vortex_t * vortex, int adbdma)
{
 int this_8 = 0 , this_4 = 0 ;
 stream_t *dma = &vortex->dma_adb[adbdma];

 switch (dma->fifo_status) {
 case 129:
  vortex_fifo_setadbvalid(vortex, adbdma,
     dma->fifo_enabled ? 1 : 0);
  break;
 case 128:
  this_8 = 1;
  hwwrite(vortex->mmio, VORTEX_ADBDMA_CTRL + (adbdma << 2),
   dma->dma_ctrl);
  vortex_fifo_setadbctrl(vortex, adbdma, dma->dma_unknown,
           this_4, this_8,
           dma->fifo_enabled ? 1 : 0, 0);
  break;
 case 130:
  vortex_fifo_setadbctrl(vortex, adbdma, dma->dma_unknown,
           this_4, this_8,
           dma->fifo_enabled ? 1 : 0, 0);
  break;
 }
 dma->fifo_status = 129;
}
