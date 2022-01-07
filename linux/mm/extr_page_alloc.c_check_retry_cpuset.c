
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_context {int * nodemask; } ;


 int cpuset_nodemask_valid_mems_allowed (int *) ;
 scalar_t__ cpusets_enabled () ;
 scalar_t__ read_mems_allowed_retry (int) ;

__attribute__((used)) static inline bool
check_retry_cpuset(int cpuset_mems_cookie, struct alloc_context *ac)
{
 if (cpusets_enabled() && ac->nodemask &&
   !cpuset_nodemask_valid_mems_allowed(ac->nodemask)) {
  ac->nodemask = ((void*)0);
  return 1;
 }
 if (read_mems_allowed_retry(cpuset_mems_cookie))
  return 1;

 return 0;
}
