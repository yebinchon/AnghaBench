
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cgroup_no_v1_mask ;

bool cgroup1_ssid_disabled(int ssid)
{
 return cgroup_no_v1_mask & (1 << ssid);
}
