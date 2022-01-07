
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {scalar_t__ driver_data; } ;


 unsigned long sof_rt5682_quirk ;

__attribute__((used)) static int sof_rt5682_quirk_cb(const struct dmi_system_id *id)
{
 sof_rt5682_quirk = (unsigned long)id->driver_data;
 return 1;
}
