
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oom_control {int order; int gfp_mask; int * memcg; int * nodemask; int * zonelist; } ;


 scalar_t__ mem_cgroup_oom_synchronize (int) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int oom_lock ;
 int out_of_memory (struct oom_control*) ;

void pagefault_out_of_memory(void)
{
 struct oom_control oc = {
  .zonelist = ((void*)0),
  .nodemask = ((void*)0),
  .memcg = ((void*)0),
  .gfp_mask = 0,
  .order = 0,
 };

 if (mem_cgroup_oom_synchronize(1))
  return;

 if (!mutex_trylock(&oom_lock))
  return;
 out_of_memory(&oc);
 mutex_unlock(&oom_lock);
}
