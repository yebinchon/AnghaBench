
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_dev {int pci; } ;
struct hdac_bus {int dev; } ;


 int AZX_PCIREG_TCSEL ;
 int dev_dbg (int ,char*) ;
 struct hdac_bus* skl_to_bus (struct skl_dev*) ;
 int skl_update_pci_byte (int ,int ,int,int ) ;

__attribute__((used)) static void skl_init_pci(struct skl_dev *skl)
{
 struct hdac_bus *bus = skl_to_bus(skl);
 dev_dbg(bus->dev, "Clearing TCSEL\n");
 skl_update_pci_byte(skl->pci, AZX_PCIREG_TCSEL, 0x07, 0);
}
