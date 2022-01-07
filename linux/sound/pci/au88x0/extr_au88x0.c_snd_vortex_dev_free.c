
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pci_dev; int mmio; int irq; } ;
typedef TYPE_1__ vortex_t ;
struct snd_device {TYPE_1__* device_data; } ;


 int free_irq (int ,TYPE_1__*) ;
 int iounmap (int ) ;
 int kfree (TYPE_1__*) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int vortex_core_shutdown (TYPE_1__*) ;
 int vortex_gameport_unregister (TYPE_1__*) ;

__attribute__((used)) static int snd_vortex_dev_free(struct snd_device *device)
{
 vortex_t *vortex = device->device_data;

 vortex_gameport_unregister(vortex);
 vortex_core_shutdown(vortex);

 free_irq(vortex->irq, vortex);
 iounmap(vortex->mmio);
 pci_release_regions(vortex->pci_dev);
 pci_disable_device(vortex->pci_dev);
 kfree(vortex);

 return 0;
}
