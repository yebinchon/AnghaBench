
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_acpi_mach {int dummy; } ;
struct dmi_system_id {scalar_t__ driver_data; } ;


 unsigned long APL_RVP ;
 int apl_table ;
 struct dmi_system_id* dmi_first_match (int ) ;

__attribute__((used)) static struct snd_soc_acpi_mach *apl_quirk(void *arg)
{
 struct snd_soc_acpi_mach *mach = arg;
 const struct dmi_system_id *dmi_id;
 unsigned long apl_machine_id;

 dmi_id = dmi_first_match(apl_table);
 if (dmi_id) {
  apl_machine_id = (unsigned long)dmi_id->driver_data;
  if (apl_machine_id == APL_RVP)
   return ((void*)0);
 }

 return mach;
}
