
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dev; } ;


 int dev_info (int *,char*,int) ;
 int dev_warn (int *,char*,int) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;

__attribute__((used)) static void vortex_fix_agp_bridge(struct pci_dev *via)
{
 int rc;
 u8 value;







 if (!(rc = pci_read_config_byte(via, 0x42, &value))
   && ((value & 0x10)
    || !(rc = pci_write_config_byte(via, 0x42, value | 0x10)))) {
  dev_info(&via->dev, "bridge config is 0x%x\n", value | 0x10);
 } else {
  dev_warn(&via->dev,
    "could not set vortex latency: pci error 0x%x\n", rc);
 }
}
