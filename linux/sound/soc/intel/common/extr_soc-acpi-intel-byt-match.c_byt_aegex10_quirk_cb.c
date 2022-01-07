
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {int dummy; } ;


 int BYT_AEGEX_10 ;
 int byt_machine_id ;

__attribute__((used)) static int byt_aegex10_quirk_cb(const struct dmi_system_id *id)
{
 byt_machine_id = BYT_AEGEX_10;
 return 1;
}
