
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int pci_release_regions (struct pci_dev*) ;
 int pm_runtime_get_noresume (int *) ;
 int snd_sof_device_remove (int *) ;

__attribute__((used)) static void sof_pci_remove(struct pci_dev *pci)
{

 snd_sof_device_remove(&pci->dev);


 pm_runtime_get_noresume(&pci->dev);


 pci_release_regions(pci);
}
