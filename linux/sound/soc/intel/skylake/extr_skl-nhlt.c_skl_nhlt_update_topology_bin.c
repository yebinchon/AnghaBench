
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skl_dev {int pci_id; int tplg_name; scalar_t__ nhlt; } ;
struct TYPE_2__ {char* oem_id; char* oem_table_id; int oem_revision; } ;
struct nhlt_acpi_table {TYPE_1__ header; } ;
struct hdac_bus {struct device* dev; } ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,char*,char*,int) ;
 int skl_nhlt_trim_space (int ) ;
 struct hdac_bus* skl_to_bus (struct skl_dev*) ;
 int snprintf (int ,int,char*,int,char*,char*,int,char*) ;

int skl_nhlt_update_topology_bin(struct skl_dev *skl)
{
 struct nhlt_acpi_table *nhlt = (struct nhlt_acpi_table *)skl->nhlt;
 struct hdac_bus *bus = skl_to_bus(skl);
 struct device *dev = bus->dev;

 dev_dbg(dev, "oem_id %.6s, oem_table_id %.8s oem_revision %d\n",
  nhlt->header.oem_id, nhlt->header.oem_table_id,
  nhlt->header.oem_revision);

 snprintf(skl->tplg_name, sizeof(skl->tplg_name), "%x-%.6s-%.8s-%d%s",
  skl->pci_id, nhlt->header.oem_id, nhlt->header.oem_table_id,
  nhlt->header.oem_revision, "-tplg.bin");

 skl_nhlt_trim_space(skl->tplg_name);

 return 0;
}
