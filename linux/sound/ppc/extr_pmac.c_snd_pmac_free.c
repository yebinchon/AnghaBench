
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_4__* dma; int cmd; } ;
struct TYPE_5__ {TYPE_4__* dma; int cmd; } ;
struct snd_pmac {scalar_t__ irq; scalar_t__ tx_irq; scalar_t__ rx_irq; int requested; scalar_t__ node; int pdev; TYPE_3__* rsrc; TYPE_2__ capture; TYPE_1__ playback; TYPE_4__* awacs; TYPE_4__* latch_base; TYPE_4__* macio_base; int extra_dma; int (* mixer_free ) (struct snd_pmac*) ;scalar_t__ initialized; } ;
struct TYPE_8__ {int control; } ;
struct TYPE_7__ {int start; } ;


 int emergency_dbdma ;
 int free_irq (scalar_t__,void*) ;
 int in_le32 (int *) ;
 int iounmap (TYPE_4__*) ;
 int kfree (struct snd_pmac*) ;
 int of_node_put (scalar_t__) ;
 int out_le32 (int *,int) ;
 int pci_dev_put (int ) ;
 int release_mem_region (int ,int ) ;
 int resource_size (TYPE_3__*) ;
 int snd_pmac_dbdma_free (struct snd_pmac*,int *) ;
 int snd_pmac_dbdma_reset (struct snd_pmac*) ;
 int snd_pmac_detach_beep (struct snd_pmac*) ;
 int snd_pmac_sound_feature (struct snd_pmac*,int ) ;
 int stub1 (struct snd_pmac*) ;

__attribute__((used)) static int snd_pmac_free(struct snd_pmac *chip)
{

 if (chip->initialized) {
  snd_pmac_dbdma_reset(chip);

  out_le32(&chip->awacs->control, in_le32(&chip->awacs->control) & 0xfff);
 }

 if (chip->node)
  snd_pmac_sound_feature(chip, 0);


 if (chip->mixer_free)
  chip->mixer_free(chip);

 snd_pmac_detach_beep(chip);


 if (chip->irq >= 0)
  free_irq(chip->irq, (void*)chip);
 if (chip->tx_irq >= 0)
  free_irq(chip->tx_irq, (void*)chip);
 if (chip->rx_irq >= 0)
  free_irq(chip->rx_irq, (void*)chip);
 snd_pmac_dbdma_free(chip, &chip->playback.cmd);
 snd_pmac_dbdma_free(chip, &chip->capture.cmd);
 snd_pmac_dbdma_free(chip, &chip->extra_dma);
 snd_pmac_dbdma_free(chip, &emergency_dbdma);
 iounmap(chip->macio_base);
 iounmap(chip->latch_base);
 iounmap(chip->awacs);
 iounmap(chip->playback.dma);
 iounmap(chip->capture.dma);

 if (chip->node) {
  int i;
  for (i = 0; i < 3; i++) {
   if (chip->requested & (1 << i))
    release_mem_region(chip->rsrc[i].start,
         resource_size(&chip->rsrc[i]));
  }
 }

 pci_dev_put(chip->pdev);
 of_node_put(chip->node);
 kfree(chip);
 return 0;
}
