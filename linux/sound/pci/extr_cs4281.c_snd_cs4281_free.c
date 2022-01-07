
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs4281 {scalar_t__ irq; int pci; int ba1; int ba0; } ;


 int BA0_CLKCR1 ;
 int BA0_HIMR ;
 int BA0_SSPM ;
 int PCI_D3hot ;
 int free_irq (scalar_t__,struct cs4281*) ;
 int iounmap (int ) ;
 int kfree (struct cs4281*) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int pci_set_power_state (int ,int ) ;
 int snd_cs4281_free_gameport (struct cs4281*) ;
 int snd_cs4281_pokeBA0 (struct cs4281*,int ,int) ;
 int synchronize_irq (scalar_t__) ;

__attribute__((used)) static int snd_cs4281_free(struct cs4281 *chip)
{
 snd_cs4281_free_gameport(chip);

 if (chip->irq >= 0)
  synchronize_irq(chip->irq);


 snd_cs4281_pokeBA0(chip, BA0_HIMR, 0x7fffffff);

 snd_cs4281_pokeBA0(chip, BA0_CLKCR1, 0);

 snd_cs4281_pokeBA0(chip, BA0_SSPM, 0);

 pci_set_power_state(chip->pci, PCI_D3hot);

 if (chip->irq >= 0)
  free_irq(chip->irq, chip);
 iounmap(chip->ba0);
 iounmap(chip->ba1);
 pci_release_regions(chip->pci);
 pci_disable_device(chip->pci);

 kfree(chip);
 return 0;
}
