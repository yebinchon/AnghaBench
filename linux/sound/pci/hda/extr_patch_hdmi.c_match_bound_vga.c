
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int bus; } ;
struct hdac_bus {struct device* dev; } ;
struct device {int dummy; } ;


 int dev_is_pci (struct device*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int match_bound_vga(struct device *dev, int subtype, void *data)
{
 struct hdac_bus *bus = data;
 struct pci_dev *pci, *master;

 if (!dev_is_pci(dev) || !dev_is_pci(bus->dev))
  return 0;
 master = to_pci_dev(bus->dev);
 pci = to_pci_dev(dev);
 return master->bus == pci->bus;
}
