
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int class; int dev; } ;
struct nhlt_acpi_table {int dummy; } ;
struct azx {scalar_t__ driver_type; } ;


 scalar_t__ AZX_DRIVER_SKL ;
 int ENODEV ;
 int dev_info (int *,char*) ;
 int intel_nhlt_free (struct nhlt_acpi_table*) ;
 scalar_t__ intel_nhlt_get_dmic_geo (int *,struct nhlt_acpi_table*) ;
 struct nhlt_acpi_table* intel_nhlt_init (int *) ;

__attribute__((used)) static int azx_check_dmic(struct pci_dev *pci, struct azx *chip)
{
 struct nhlt_acpi_table *nhlt;
 int ret = 0;

 if (chip->driver_type == AZX_DRIVER_SKL &&
     pci->class != 0x040300) {
  nhlt = intel_nhlt_init(&pci->dev);
  if (nhlt) {
   if (intel_nhlt_get_dmic_geo(&pci->dev, nhlt)) {
    ret = -ENODEV;
    dev_info(&pci->dev, "Digital mics found on Skylake+ platform, aborting probe\n");
   }
   intel_nhlt_free(nhlt);
  }
 }
 return ret;
}
