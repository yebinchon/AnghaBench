
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_acpi_mach {int dummy; } ;


 scalar_t__ CHT_SURFACE_MACH ;
 scalar_t__ cht_machine_id ;
 struct snd_soc_acpi_mach cht_surface_mach ;
 int cht_table ;
 int dmi_check_system (int ) ;

__attribute__((used)) static struct snd_soc_acpi_mach *cht_quirk(void *arg)
{
 struct snd_soc_acpi_mach *mach = arg;

 dmi_check_system(cht_table);

 if (cht_machine_id == CHT_SURFACE_MACH)
  return &cht_surface_mach;
 else
  return mach;
}
