
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* dma_wt; } ;
typedef TYPE_1__ vortex_t ;
struct TYPE_6__ {scalar_t__ fifo_status; scalar_t__ fifo_enabled; int dma_unknown; } ;
typedef TYPE_2__ stream_t ;


 scalar_t__ FIFO_START ;
 scalar_t__ FIFO_STOP ;
 int vortex_fifo_setwtctrl (TYPE_1__*,int,int ,int,int,int ,int ) ;

__attribute__((used)) static void vortex_wtdma_stopfifo(vortex_t * vortex, int wtdma)
{
 stream_t *dma = &vortex->dma_wt[wtdma];

 int this_4 = 0, this_8 = 0;
 if (dma->fifo_status == FIFO_START)
  vortex_fifo_setwtctrl(vortex, wtdma, dma->dma_unknown,
          this_4, this_8, 0, 0);
 else if (dma->fifo_status == FIFO_STOP)
  return;
 dma->fifo_status = FIFO_STOP;
 dma->fifo_enabled = 0;
}
