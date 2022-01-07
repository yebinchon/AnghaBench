
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int dev_info (int *,char*) ;
 int dev_warn (int *,char*,int) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;

__attribute__((used)) static void vortex_fix_latency(struct pci_dev *vortex)
{
 int rc;
 if (!(rc = pci_write_config_byte(vortex, 0x40, 0xff))) {
   dev_info(&vortex->dev, "vortex latency is 0xff\n");
 } else {
  dev_warn(&vortex->dev,
    "could not set vortex latency: pci error 0x%x\n", rc);
 }
}
