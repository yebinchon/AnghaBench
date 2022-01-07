
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonicvibes {scalar_t__ irq; int pci; int res_dmac; int res_dmaa; int dmac_port; int dmaa_port; } ;


 int free_irq (scalar_t__,struct sonicvibes*) ;
 int kfree (struct sonicvibes*) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int pci_write_config_dword (int ,int,int ) ;
 int release_and_free_resource (int ) ;
 int snd_sonicvibes_free_gameport (struct sonicvibes*) ;

__attribute__((used)) static int snd_sonicvibes_free(struct sonicvibes *sonic)
{
 snd_sonicvibes_free_gameport(sonic);
 pci_write_config_dword(sonic->pci, 0x40, sonic->dmaa_port);
 pci_write_config_dword(sonic->pci, 0x48, sonic->dmac_port);
 if (sonic->irq >= 0)
  free_irq(sonic->irq, sonic);
 release_and_free_resource(sonic->res_dmaa);
 release_and_free_resource(sonic->res_dmac);
 pci_release_regions(sonic->pci);
 pci_disable_device(sonic->pci);
 kfree(sonic);
 return 0;
}
