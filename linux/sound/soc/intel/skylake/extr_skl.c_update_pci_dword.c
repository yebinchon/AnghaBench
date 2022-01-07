
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int pci_read_config_dword (struct pci_dev*,unsigned int,int*) ;
 int pci_write_config_dword (struct pci_dev*,unsigned int,int) ;

__attribute__((used)) static void update_pci_dword(struct pci_dev *pci,
   unsigned int reg, u32 mask, u32 val)
{
 u32 data = 0;

 pci_read_config_dword(pci, reg, &data);
 data &= ~mask;
 data |= (val & mask);
 pci_write_config_dword(pci, reg, data);
}
