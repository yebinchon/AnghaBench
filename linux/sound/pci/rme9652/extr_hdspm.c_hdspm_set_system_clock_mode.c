
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int dummy; } ;


 int HDSPM_ClockModeMaster ;
 int HDSPM_c0Master ;
 scalar_t__ hdspm_is_raydat_or_aio (struct hdspm*) ;
 int hdspm_set_toggle_setting (struct hdspm*,int ,int) ;

__attribute__((used)) static void hdspm_set_system_clock_mode(struct hdspm *hdspm, int mode)
{
 hdspm_set_toggle_setting(hdspm,
   (hdspm_is_raydat_or_aio(hdspm)) ?
   HDSPM_c0Master : HDSPM_ClockModeMaster,
   (0 == mode));
}
