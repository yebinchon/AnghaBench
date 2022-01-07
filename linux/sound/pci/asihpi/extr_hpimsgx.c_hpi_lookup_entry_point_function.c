
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hpi_pci {TYPE_1__* pci_dev; } ;
typedef int hpi_handler_func ;
struct TYPE_4__ {scalar_t__ vendor; scalar_t__ device; scalar_t__ subvendor; scalar_t__ subdevice; scalar_t__ driver_data; } ;
struct TYPE_3__ {scalar_t__ vendor; scalar_t__ device; scalar_t__ subsystem_vendor; scalar_t__ subsystem_device; } ;


 scalar_t__ PCI_ANY_ID ;
 TYPE_2__* asihpi_pci_tbl ;

__attribute__((used)) static hpi_handler_func *hpi_lookup_entry_point_function(const struct hpi_pci
 *pci_info)
{

 int i;

 for (i = 0; asihpi_pci_tbl[i].vendor != 0; i++) {
  if (asihpi_pci_tbl[i].vendor != PCI_ANY_ID
   && asihpi_pci_tbl[i].vendor !=
   pci_info->pci_dev->vendor)
   continue;
  if (asihpi_pci_tbl[i].device != PCI_ANY_ID
   && asihpi_pci_tbl[i].device !=
   pci_info->pci_dev->device)
   continue;
  if (asihpi_pci_tbl[i].subvendor != PCI_ANY_ID
   && asihpi_pci_tbl[i].subvendor !=
   pci_info->pci_dev->subsystem_vendor)
   continue;
  if (asihpi_pci_tbl[i].subdevice != PCI_ANY_ID
   && asihpi_pci_tbl[i].subdevice !=
   pci_info->pci_dev->subsystem_device)
   continue;



  return (hpi_handler_func *) asihpi_pci_tbl[i].driver_data;
 }

 return ((void*)0);
}
