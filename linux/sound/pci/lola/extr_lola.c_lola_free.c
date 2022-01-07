
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ area; } ;
struct lola {scalar_t__ irq; int pci; TYPE_2__ rb; TYPE_1__* bar; scalar_t__ initialized; } ;
struct TYPE_3__ {int remap_addr; } ;


 int free_irq (scalar_t__,void*) ;
 int iounmap (int ) ;
 int kfree (struct lola*) ;
 int lola_free_mixer (struct lola*) ;
 int lola_free_pcm (struct lola*) ;
 int lola_stop_hw (struct lola*) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int snd_dma_free_pages (TYPE_2__*) ;

__attribute__((used)) static void lola_free(struct lola *chip)
{
 if (chip->initialized)
  lola_stop_hw(chip);
 lola_free_pcm(chip);
 lola_free_mixer(chip);
 if (chip->irq >= 0)
  free_irq(chip->irq, (void *)chip);
 iounmap(chip->bar[0].remap_addr);
 iounmap(chip->bar[1].remap_addr);
 if (chip->rb.area)
  snd_dma_free_pages(&chip->rb);
 pci_release_regions(chip->pci);
 pci_disable_device(chip->pci);
 kfree(chip);
}
