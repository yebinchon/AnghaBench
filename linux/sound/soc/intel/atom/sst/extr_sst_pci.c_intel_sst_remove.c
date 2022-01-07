
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct intel_sst_drv {int pci; } ;


 int pci_dev_put (int ) ;
 struct intel_sst_drv* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int sst_context_cleanup (struct intel_sst_drv*) ;

__attribute__((used)) static void intel_sst_remove(struct pci_dev *pci)
{
 struct intel_sst_drv *sst_drv_ctx = pci_get_drvdata(pci);

 sst_context_cleanup(sst_drv_ctx);
 pci_dev_put(sst_drv_ctx->pci);
 pci_release_regions(pci);
 pci_set_drvdata(pci, ((void*)0));
}
