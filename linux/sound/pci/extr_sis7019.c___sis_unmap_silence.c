
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sis7019 {int silence_dma_addr; TYPE_1__* pci; int silence_users; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int dma_unmap_single (int *,int ,int,int ) ;

__attribute__((used)) static void __sis_unmap_silence(struct sis7019 *sis)
{

 sis->silence_users--;
 if (!sis->silence_users)
  dma_unmap_single(&sis->pci->dev, sis->silence_dma_addr, 4096,
     DMA_TO_DEVICE);
}
