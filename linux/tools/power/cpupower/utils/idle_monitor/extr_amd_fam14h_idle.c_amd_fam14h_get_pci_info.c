
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cstate {int id; } ;






 unsigned int PCI_NBP1_ENTERED_BIT ;
 unsigned int PCI_NBP1_STAT_OFFSET ;
 unsigned int PCI_NON_PC0_ENABLE_BIT ;
 unsigned int PCI_NON_PC0_OFFSET ;
 unsigned int PCI_PC1_ENABLE_BIT ;
 unsigned int PCI_PC1_OFFSET ;
 unsigned int PCI_PC6_ENABLE_BIT ;
 unsigned int PCI_PC6_OFFSET ;

__attribute__((used)) static int amd_fam14h_get_pci_info(struct cstate *state,
       unsigned int *pci_offset,
       unsigned int *enable_bit,
       unsigned int cpu)
{
 switch (state->id) {
 case 130:
  *enable_bit = PCI_NON_PC0_ENABLE_BIT;
  *pci_offset = PCI_NON_PC0_OFFSET;
  break;
 case 129:
  *enable_bit = PCI_PC1_ENABLE_BIT;
  *pci_offset = PCI_PC1_OFFSET;
  break;
 case 128:
  *enable_bit = PCI_PC6_ENABLE_BIT;
  *pci_offset = PCI_PC6_OFFSET;
  break;
 case 131:
  *enable_bit = PCI_NBP1_ENTERED_BIT;
  *pci_offset = PCI_NBP1_STAT_OFFSET;
  break;
 default:
  return -1;
 };
 return 0;
}
