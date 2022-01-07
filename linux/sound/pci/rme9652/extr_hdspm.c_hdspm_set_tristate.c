
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdspm {int settings_register; } ;


 int HDSPM_WR_SETTINGS ;
 int hdspm_write (struct hdspm*,int ,int) ;

__attribute__((used)) static int hdspm_set_tristate(struct hdspm *hdspm, int mode, u32 regmask)
{
 hdspm->settings_register &= ~(regmask * 3);
 hdspm->settings_register |= (regmask * mode);
 hdspm_write(hdspm, HDSPM_WR_SETTINGS, hdspm->settings_register);

 return 0;
}
