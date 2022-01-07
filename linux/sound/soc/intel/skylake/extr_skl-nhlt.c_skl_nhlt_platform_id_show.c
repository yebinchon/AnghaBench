
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skl_dev {int pci_id; scalar_t__ nhlt; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {char* oem_id; char* oem_table_id; int oem_revision; } ;
struct nhlt_acpi_table {TYPE_1__ header; } ;
struct hdac_bus {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct skl_dev* bus_to_skl (struct hdac_bus*) ;
 struct hdac_bus* pci_get_drvdata (struct pci_dev*) ;
 int skl_nhlt_trim_space (char*) ;
 int sprintf (char*,char*,...) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t skl_nhlt_platform_id_show(struct device *dev,
   struct device_attribute *attr, char *buf)
{
 struct pci_dev *pci = to_pci_dev(dev);
 struct hdac_bus *bus = pci_get_drvdata(pci);
 struct skl_dev *skl = bus_to_skl(bus);
 struct nhlt_acpi_table *nhlt = (struct nhlt_acpi_table *)skl->nhlt;
 char platform_id[32];

 sprintf(platform_id, "%x-%.6s-%.8s-%d", skl->pci_id,
   nhlt->header.oem_id, nhlt->header.oem_table_id,
   nhlt->header.oem_revision);

 skl_nhlt_trim_space(platform_id);
 return sprintf(buf, "%s\n", platform_id);
}
