
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dmic_num; } ;
struct snd_soc_acpi_mach {TYPE_1__ mach_params; struct skl_machine_pdata* pdata; int fw_filename; } ;
struct skl_machine_pdata {int use_tplg_pcm; } ;
struct skl_dev {int nhlt; TYPE_2__* pci; int use_tplg_pcm; int fw_name; struct snd_soc_acpi_mach* mach; } ;
struct hdac_bus {int dev; } ;
struct TYPE_4__ {int dev; } ;


 int ENODEV ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int intel_nhlt_get_dmic_geo (int *,int ) ;
 struct snd_soc_acpi_mach* skl_find_hda_machine (struct skl_dev*,void*) ;
 struct hdac_bus* skl_to_bus (struct skl_dev*) ;
 struct snd_soc_acpi_mach* snd_soc_acpi_find_machine (struct snd_soc_acpi_mach*) ;

__attribute__((used)) static int skl_find_machine(struct skl_dev *skl, void *driver_data)
{
 struct hdac_bus *bus = skl_to_bus(skl);
 struct snd_soc_acpi_mach *mach = driver_data;
 struct skl_machine_pdata *pdata;

 mach = snd_soc_acpi_find_machine(mach);
 if (!mach) {
  dev_dbg(bus->dev, "No matching I2S machine driver found\n");
  mach = skl_find_hda_machine(skl, driver_data);
  if (!mach) {
   dev_err(bus->dev, "No matching machine driver found\n");
   return -ENODEV;
  }
 }

 skl->mach = mach;
 skl->fw_name = mach->fw_filename;
 pdata = mach->pdata;

 if (pdata) {
  skl->use_tplg_pcm = pdata->use_tplg_pcm;
  mach->mach_params.dmic_num =
   intel_nhlt_get_dmic_geo(&skl->pci->dev,
      skl->nhlt);
 }

 return 0;
}
