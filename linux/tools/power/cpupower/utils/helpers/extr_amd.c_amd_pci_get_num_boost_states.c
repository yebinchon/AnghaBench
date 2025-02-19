
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pci_dev {int dummy; } ;
struct pci_access {int dummy; } ;


 int ENODEV ;
 int pci_cleanup (struct pci_access*) ;
 int pci_read_byte (struct pci_dev*,int) ;
 struct pci_dev* pci_slot_func_init (struct pci_access**,int,int) ;

int amd_pci_get_num_boost_states(int *active, int *states)
{
 struct pci_access *pci_acc;
 struct pci_dev *device;
 uint8_t val = 0;

 *active = *states = 0;

 device = pci_slot_func_init(&pci_acc, 0x18, 4);

 if (device == ((void*)0))
  return -ENODEV;

 val = pci_read_byte(device, 0x15c);
 if (val & 3)
  *active = 1;
 else
  *active = 0;
 *states = (val >> 2) & 7;

 pci_cleanup(pci_acc);
 return 0;
}
