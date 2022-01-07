
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * area; } ;
struct snd_ymfpci {TYPE_1__ ac3_tmp_base; int reg_lock; } ;


 int YDSXGR_MAPOFEFFECT ;
 int snd_dma_free_pages (TYPE_1__*) ;
 int snd_ymfpci_readl (struct snd_ymfpci*,int ) ;
 int snd_ymfpci_writel (struct snd_ymfpci*,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_ymfpci_ac3_done(struct snd_ymfpci *chip)
{
 spin_lock_irq(&chip->reg_lock);
 snd_ymfpci_writel(chip, YDSXGR_MAPOFEFFECT,
     snd_ymfpci_readl(chip, YDSXGR_MAPOFEFFECT) & ~(3 << 3));
 spin_unlock_irq(&chip->reg_lock);

 if (chip->ac3_tmp_base.area) {
  snd_dma_free_pages(&chip->ac3_tmp_base);
  chip->ac3_tmp_base.area = ((void*)0);
 }
 return 0;
}
