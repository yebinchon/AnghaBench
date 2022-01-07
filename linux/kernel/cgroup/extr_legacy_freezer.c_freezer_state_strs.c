
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CGROUP_FREEZING ;
 unsigned int CGROUP_FROZEN ;

__attribute__((used)) static const char *freezer_state_strs(unsigned int state)
{
 if (state & CGROUP_FROZEN)
  return "FROZEN";
 if (state & CGROUP_FREEZING)
  return "FREEZING";
 return "THAWED";
}
