
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int addr; } ;
struct snd_ymfpci {int reg_lock; TYPE_1__*** bank_effect; TYPE_2__ ac3_tmp_base; int pci; } ;
struct TYPE_3__ {void* loop_end; void* base; } ;


 int ENOMEM ;
 int SNDRV_DMA_TYPE_DEV ;
 int YDSXGR_MAPOFEFFECT ;
 void* cpu_to_le32 (int) ;
 scalar_t__ snd_dma_alloc_pages (int ,int ,int,TYPE_2__*) ;
 int snd_dma_pci_data (int ) ;
 int snd_ymfpci_readl (struct snd_ymfpci*,int ) ;
 int snd_ymfpci_writel (struct snd_ymfpci*,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_ymfpci_ac3_init(struct snd_ymfpci *chip)
{
 if (snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV, snd_dma_pci_data(chip->pci),
    4096, &chip->ac3_tmp_base) < 0)
  return -ENOMEM;

 chip->bank_effect[3][0]->base =
 chip->bank_effect[3][1]->base = cpu_to_le32(chip->ac3_tmp_base.addr);
 chip->bank_effect[3][0]->loop_end =
 chip->bank_effect[3][1]->loop_end = cpu_to_le32(1024);
 chip->bank_effect[4][0]->base =
 chip->bank_effect[4][1]->base = cpu_to_le32(chip->ac3_tmp_base.addr + 2048);
 chip->bank_effect[4][0]->loop_end =
 chip->bank_effect[4][1]->loop_end = cpu_to_le32(1024);

 spin_lock_irq(&chip->reg_lock);
 snd_ymfpci_writel(chip, YDSXGR_MAPOFEFFECT,
     snd_ymfpci_readl(chip, YDSXGR_MAPOFEFFECT) | 3 << 3);
 spin_unlock_irq(&chip->reg_lock);
 return 0;
}
