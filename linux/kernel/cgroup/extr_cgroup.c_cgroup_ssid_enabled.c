
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CGROUP_SUBSYS_COUNT ;
 int * cgroup_subsys_enabled_key ;
 int static_key_enabled (int ) ;

bool cgroup_ssid_enabled(int ssid)
{
 if (CGROUP_SUBSYS_COUNT == 0)
  return 0;

 return static_key_enabled(cgroup_subsys_enabled_key[ssid]);
}
