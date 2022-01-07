
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {int irq; int pci; scalar_t__ io_base; int * mem_base; } ;


 int free_irq (int,struct hw*) ;
 int iounmap (int *) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;

__attribute__((used)) static int hw_card_shutdown(struct hw *hw)
{
 if (hw->irq >= 0)
  free_irq(hw->irq, hw);

 hw->irq = -1;
 iounmap(hw->mem_base);
 hw->mem_base = ((void*)0);

 if (hw->io_base)
  pci_release_regions(hw->pci);

 hw->io_base = 0;

 pci_disable_device(hw->pci);

 return 0;
}
