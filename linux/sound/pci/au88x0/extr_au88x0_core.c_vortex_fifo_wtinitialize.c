
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;


 int FIFO_MASK ;
 int FIFO_SIZE ;
 int FIFO_U1 ;
 scalar_t__ VORTEX_FIFO_WTCTRL ;
 int hwwrite (int ,scalar_t__,int) ;
 int vortex_fifo_clearwtdata (TYPE_1__*,int,int ) ;

__attribute__((used)) static void vortex_fifo_wtinitialize(vortex_t * vortex, int fifo, int j)
{
 vortex_fifo_clearwtdata(vortex, fifo, FIFO_SIZE);




 hwwrite(vortex->mmio, VORTEX_FIFO_WTCTRL + (fifo << 2),
  (FIFO_U1 | ((j & FIFO_MASK) << 0xc)));

}
