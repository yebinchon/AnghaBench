
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int PCI_NBP1_CAP_OFFSET ;
 int amd_fam14h_pci_dev ;
 int pci_read_long (int ,int ) ;

__attribute__((used)) static int is_nbp1_capable(void)
{
 uint32_t val;
 val = pci_read_long(amd_fam14h_pci_dev, PCI_NBP1_CAP_OFFSET);
 return val & (1 << 31);
}
