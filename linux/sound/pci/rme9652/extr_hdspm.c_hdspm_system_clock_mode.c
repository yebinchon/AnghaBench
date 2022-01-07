
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int io_type; int settings_register; int control_register; } ;



 int HDSPM_ClockModeMaster ;
 int HDSPM_c0Master ;


__attribute__((used)) static int hdspm_system_clock_mode(struct hdspm *hdspm)
{
 switch (hdspm->io_type) {
 case 129:
 case 128:
  if (hdspm->settings_register & HDSPM_c0Master)
   return 0;
  break;

 default:
  if (hdspm->control_register & HDSPM_ClockModeMaster)
   return 0;
 }

 return 1;
}
