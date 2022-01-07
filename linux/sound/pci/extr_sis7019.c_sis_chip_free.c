
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis7019 {scalar_t__ irq; int pci; int ioaddr; scalar_t__ ioport; } ;


 scalar_t__ SIS_GCR ;
 int SIS_GCR_SOFTWARE_RESET ;
 scalar_t__ SIS_GIER ;
 int free_irq (scalar_t__,struct sis7019*) ;
 int iounmap (int ) ;
 int outl (int ,scalar_t__) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int sis_free_suspend (struct sis7019*) ;
 int udelay (int) ;

__attribute__((used)) static int sis_chip_free(struct sis7019 *sis)
{


 outl(SIS_GCR_SOFTWARE_RESET, sis->ioport + SIS_GCR);
 udelay(25);
 outl(0, sis->ioport + SIS_GCR);
 outl(0, sis->ioport + SIS_GIER);



 if (sis->irq >= 0)
  free_irq(sis->irq, sis);

 iounmap(sis->ioaddr);
 pci_release_regions(sis->pci);
 pci_disable_device(sis->pci);
 sis_free_suspend(sis);
 return 0;
}
