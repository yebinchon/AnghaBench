
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_acpi_mach {int fw_filename; } ;
struct skl_dev {int dummy; } ;
struct hdac_bus {scalar_t__ codec_mask; } ;


 struct hdac_bus* skl_to_bus (struct skl_dev*) ;
 struct snd_soc_acpi_mach* snd_soc_acpi_intel_hda_machines ;

__attribute__((used)) static struct snd_soc_acpi_mach *skl_find_hda_machine(struct skl_dev *skl,
     struct snd_soc_acpi_mach *machines)
{
 struct hdac_bus *bus = skl_to_bus(skl);
 struct snd_soc_acpi_mach *mach;


 if (bus->codec_mask == 0)
  return ((void*)0);


 mach = snd_soc_acpi_intel_hda_machines;


 mach->fw_filename = machines->fw_filename;

 return mach;
}
