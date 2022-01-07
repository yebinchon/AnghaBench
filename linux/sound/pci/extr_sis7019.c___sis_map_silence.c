
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sis7019 {int silence_users; int * suspend_state; TYPE_1__* pci; int silence_dma_addr; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int dma_map_single (int *,int ,int,int ) ;

__attribute__((used)) static void __sis_map_silence(struct sis7019 *sis)
{

 if (!sis->silence_users)
  sis->silence_dma_addr = dma_map_single(&sis->pci->dev,
      sis->suspend_state[0],
      4096, DMA_TO_DEVICE);
 sis->silence_users++;
}
