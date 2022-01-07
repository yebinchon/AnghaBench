
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cg_read_strcmp (char const*,char*,char*) ;
 int usleep (int) ;

__attribute__((used)) static int cg_test_proc_killed(const char *cgroup)
{
 int limit;

 for (limit = 10; limit > 0; limit--) {
  if (cg_read_strcmp(cgroup, "cgroup.procs", "") == 0)
   return 0;

  usleep(100000);
 }
 return -1;
}
