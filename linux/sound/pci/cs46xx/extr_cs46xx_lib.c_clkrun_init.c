
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_cs46xx {int acpi_port; } ;
struct pci_dev {int dummy; } ;


 int PCI_DEVICE_ID_INTEL_82371AB_3 ;
 int PCI_VENDOR_ID_INTEL ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int ,int *) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;

__attribute__((used)) static void clkrun_init(struct snd_cs46xx *chip)
{
 struct pci_dev *pdev;
 u8 pp;

 chip->acpi_port = 0;

 pdev = pci_get_device(PCI_VENDOR_ID_INTEL,
  PCI_DEVICE_ID_INTEL_82371AB_3, ((void*)0));
 if (pdev == ((void*)0))
  return;


 pci_read_config_byte(pdev, 0x41, &pp);
 chip->acpi_port = pp << 8;
 pci_dev_put(pdev);
}
