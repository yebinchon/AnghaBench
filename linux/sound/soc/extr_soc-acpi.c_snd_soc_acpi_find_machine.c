
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_acpi_mach {struct snd_soc_acpi_mach* (* machine_quirk ) (struct snd_soc_acpi_mach*) ;scalar_t__* id; } ;


 scalar_t__ acpi_dev_present (scalar_t__*,int *,int) ;
 struct snd_soc_acpi_mach* stub1 (struct snd_soc_acpi_mach*) ;

struct snd_soc_acpi_mach *
snd_soc_acpi_find_machine(struct snd_soc_acpi_mach *machines)
{
 struct snd_soc_acpi_mach *mach;
 struct snd_soc_acpi_mach *mach_alt;

 for (mach = machines; mach->id[0]; mach++) {
  if (acpi_dev_present(mach->id, ((void*)0), -1)) {
   if (mach->machine_quirk) {
    mach_alt = mach->machine_quirk(mach);
    if (!mach_alt)
     continue;
    mach = mach_alt;
   }

   return mach;
  }
 }
 return ((void*)0);
}
