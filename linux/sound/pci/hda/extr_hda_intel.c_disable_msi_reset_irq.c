
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_bus {int irq; } ;
struct azx {scalar_t__ msi; int pci; } ;


 int azx_acquire_irq (struct azx*,int) ;
 struct hdac_bus* azx_bus (struct azx*) ;
 int free_irq (int,struct azx*) ;
 int pci_disable_msi (int ) ;

__attribute__((used)) static int disable_msi_reset_irq(struct azx *chip)
{
 struct hdac_bus *bus = azx_bus(chip);
 int err;

 free_irq(bus->irq, chip);
 bus->irq = -1;
 pci_disable_msi(chip->pci);
 chip->msi = 0;
 err = azx_acquire_irq(chip, 1);
 if (err < 0)
  return err;

 return 0;
}
