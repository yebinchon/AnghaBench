
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdspm {int settings_register; int control_register; } ;


 scalar_t__ hdspm_is_raydat_or_aio (struct hdspm*) ;

__attribute__((used)) static int hdspm_toggle_setting(struct hdspm *hdspm, u32 regmask)
{
 u32 reg;

 if (hdspm_is_raydat_or_aio(hdspm))
  reg = hdspm->settings_register;
 else
  reg = hdspm->control_register;

 return (reg & regmask) ? 1 : 0;
}
