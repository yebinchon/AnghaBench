
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2sbus_dev {int macio; } ;
struct dbdma_command_mem {int bus_addr; int space; int size; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,int ,int ,int ) ;
 TYPE_1__* macio_get_pci_dev (int ) ;

__attribute__((used)) static void free_dbdma_descriptor_ring(struct i2sbus_dev *i2sdev,
           struct dbdma_command_mem *r)
{
 if (!r->space) return;

 dma_free_coherent(&macio_get_pci_dev(i2sdev->macio)->dev,
       r->size, r->space, r->bus_addr);
}
