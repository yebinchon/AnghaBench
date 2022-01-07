
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {int dummy; } ;


 int CHT_SURFACE_MACH ;
 int cht_machine_id ;

__attribute__((used)) static int cht_surface_quirk_cb(const struct dmi_system_id *id)
{
 cht_machine_id = CHT_SURFACE_MACH;
 return 1;
}
