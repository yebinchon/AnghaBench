
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_filter {int domain; int bus; int slot; int func; int vendor; int device; } ;
struct pci_dev {struct pci_dev* next; } ;
struct pci_access {struct pci_dev* devices; } ;


 struct pci_access* pci_alloc () ;
 int pci_cleanup (struct pci_access*) ;
 int pci_filter_init (struct pci_access*,struct pci_filter*) ;
 scalar_t__ pci_filter_match (struct pci_filter*,struct pci_dev*) ;
 int pci_init (struct pci_access*) ;
 int pci_scan_bus (struct pci_access*) ;

struct pci_dev *pci_acc_init(struct pci_access **pacc, int domain, int bus,
        int slot, int func, int vendor, int dev)
{
 struct pci_filter filter_nb_link;
 struct pci_dev *device;

 *pacc = pci_alloc();
 if (*pacc == ((void*)0))
  return ((void*)0);

 pci_filter_init(*pacc, &filter_nb_link);
 filter_nb_link.domain = domain;
 filter_nb_link.bus = bus;
 filter_nb_link.slot = slot;
 filter_nb_link.func = func;
 filter_nb_link.vendor = vendor;
 filter_nb_link.device = dev;

 pci_init(*pacc);
 pci_scan_bus(*pacc);

 for (device = (*pacc)->devices; device; device = device->next) {
  if (pci_filter_match(&filter_nb_link, device))
   return device;
 }
 pci_cleanup(*pacc);
 return ((void*)0);
}
