
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {int dummy; } ;


 int BYT_POV_P1006W ;
 int byt_machine_id ;

__attribute__((used)) static int byt_pov_p1006w_quirk_cb(const struct dmi_system_id *id)
{
 byt_machine_id = BYT_POV_P1006W;
 return 1;
}
