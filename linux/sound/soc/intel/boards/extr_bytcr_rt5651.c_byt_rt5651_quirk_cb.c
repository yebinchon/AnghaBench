
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {scalar_t__ driver_data; } ;


 unsigned long byt_rt5651_quirk ;

__attribute__((used)) static int byt_rt5651_quirk_cb(const struct dmi_system_id *id)
{
 byt_rt5651_quirk = (unsigned long)id->driver_data;
 return 1;
}
