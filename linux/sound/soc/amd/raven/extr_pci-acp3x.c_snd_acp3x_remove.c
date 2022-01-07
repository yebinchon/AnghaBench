
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct acp3x_dev_data {int acp3x_base; int pdev; } ;


 int iounmap (int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_msi (struct pci_dev*) ;
 struct acp3x_dev_data* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int platform_device_unregister (int ) ;

__attribute__((used)) static void snd_acp3x_remove(struct pci_dev *pci)
{
 struct acp3x_dev_data *adata = pci_get_drvdata(pci);

 platform_device_unregister(adata->pdev);
 iounmap(adata->acp3x_base);

 pci_disable_msi(pci);
 pci_release_regions(pci);
 pci_disable_device(pci);
}
