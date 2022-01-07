
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2sbus_dev {int macio; } ;
struct dbdma_command_mem {int size; scalar_t__ space; void* cmds; scalar_t__ bus_addr; scalar_t__ bus_cmd_start; } ;
struct dbdma_cmd {int dummy; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ DBDMA_ALIGN (scalar_t__) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ dma_alloc_coherent (int *,int,scalar_t__*,int ) ;
 TYPE_1__* macio_get_pci_dev (int ) ;

__attribute__((used)) static int alloc_dbdma_descriptor_ring(struct i2sbus_dev *i2sdev,
           struct dbdma_command_mem *r,
           int numcmds)
{

 r->size = (numcmds + 3) * sizeof(struct dbdma_cmd);



 r->space = dma_alloc_coherent(&macio_get_pci_dev(i2sdev->macio)->dev,
          r->size, &r->bus_addr, GFP_KERNEL);
 if (!r->space)
  return -ENOMEM;

 r->cmds = (void*)DBDMA_ALIGN(r->space);
 r->bus_cmd_start = r->bus_addr +
      (dma_addr_t)((char*)r->cmds - (char*)r->space);

 return 0;
}
