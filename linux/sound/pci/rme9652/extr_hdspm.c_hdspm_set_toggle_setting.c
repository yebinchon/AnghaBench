
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdspm {int control_register; int settings_register; } ;


 int HDSPM_WR_SETTINGS ;
 int HDSPM_controlRegister ;
 scalar_t__ hdspm_is_raydat_or_aio (struct hdspm*) ;
 int hdspm_write (struct hdspm*,int ,int ) ;

__attribute__((used)) static int hdspm_set_toggle_setting(struct hdspm *hdspm, u32 regmask, int out)
{
 u32 *reg;
 u32 target_reg;

 if (hdspm_is_raydat_or_aio(hdspm)) {
  reg = &(hdspm->settings_register);
  target_reg = HDSPM_WR_SETTINGS;
 } else {
  reg = &(hdspm->control_register);
  target_reg = HDSPM_controlRegister;
 }

 if (out)
  *reg |= regmask;
 else
  *reg &= ~regmask;

 hdspm_write(hdspm, target_reg, *reg);

 return 0;
}
