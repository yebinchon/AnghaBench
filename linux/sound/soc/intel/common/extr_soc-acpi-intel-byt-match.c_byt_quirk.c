
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_acpi_mach {int dummy; } ;





 int byt_machine_id ;
 struct snd_soc_acpi_mach byt_pov_p1006w ;
 int byt_table ;
 struct snd_soc_acpi_mach byt_thinkpad_10 ;
 int dmi_check_system (int ) ;

__attribute__((used)) static struct snd_soc_acpi_mach *byt_quirk(void *arg)
{
 struct snd_soc_acpi_mach *mach = arg;

 dmi_check_system(byt_table);

 switch (byt_machine_id) {
 case 128:
 case 130:
  return &byt_thinkpad_10;
 case 129:
  return &byt_pov_p1006w;
 default:
  return mach;
 }
}
