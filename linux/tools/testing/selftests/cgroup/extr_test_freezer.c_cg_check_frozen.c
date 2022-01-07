
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cg_read_strstr (char const*,char*,char*) ;
 int debug (char*,char const*) ;

__attribute__((used)) static int cg_check_frozen(const char *cgroup, bool frozen)
{
 if (frozen) {
  if (cg_read_strstr(cgroup, "cgroup.events", "frozen 1") != 0) {
   debug("Cgroup %s isn't frozen\n", cgroup);
   return -1;
  }
 } else {



  if (cg_read_strstr(cgroup, "cgroup.events", "frozen 0") != 0) {
   debug("Cgroup %s is frozen\n", cgroup);
   return -1;
  }
 }

 return 0;
}
