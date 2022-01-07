
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atiixp {scalar_t__ irq; int pci; int remap_addr; } ;


 int free_irq (scalar_t__,struct atiixp*) ;
 int iounmap (int ) ;
 int kfree (struct atiixp*) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int snd_atiixp_chip_stop (struct atiixp*) ;

__attribute__((used)) static int snd_atiixp_free(struct atiixp *chip)
{
 if (chip->irq < 0)
  goto __hw_end;
 snd_atiixp_chip_stop(chip);

      __hw_end:
 if (chip->irq >= 0)
  free_irq(chip->irq, chip);
 iounmap(chip->remap_addr);
 pci_release_regions(chip->pci);
 pci_disable_device(chip->pci);
 kfree(chip);
 return 0;
}
