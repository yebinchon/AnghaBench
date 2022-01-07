
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct azx {int driver_type; TYPE_1__* pci; } ;
struct TYPE_2__ {scalar_t__ vendor; int device; } ;




 scalar_t__ PCI_VENDOR_ID_INTEL ;

__attribute__((used)) static int default_bdl_pos_adj(struct azx *chip)
{

 if (chip->pci->vendor == PCI_VENDOR_ID_INTEL) {
  switch (chip->pci->device) {
  case 0x0f04:
  case 0x2284:
   return 32;
  }
 }

 switch (chip->driver_type) {
 case 129:
 case 128:
  return 1;
 default:
  return 32;
 }
}
