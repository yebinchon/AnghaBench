
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_read_config_byte (struct pci_dev*,unsigned int,unsigned char*) ;
 int pci_write_config_byte (struct pci_dev*,unsigned int,unsigned char) ;

__attribute__((used)) static void update_pci_byte(struct pci_dev *pci, unsigned int reg,
       unsigned char mask, unsigned char val)
{
 unsigned char data;

 pci_read_config_byte(pci, reg, &data);
 data &= ~mask;
 data |= (val & mask);
 pci_write_config_byte(pci, reg, data);
}
