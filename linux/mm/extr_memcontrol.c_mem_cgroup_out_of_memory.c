
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oom_control {int order; int gfp_mask; struct mem_cgroup* memcg; int * nodemask; int * zonelist; } ;
struct mem_cgroup {int dummy; } ;
typedef int gfp_t ;


 scalar_t__ mutex_lock_killable (int *) ;
 int mutex_unlock (int *) ;
 int oom_lock ;
 scalar_t__ out_of_memory (struct oom_control*) ;
 scalar_t__ should_force_charge () ;

__attribute__((used)) static bool mem_cgroup_out_of_memory(struct mem_cgroup *memcg, gfp_t gfp_mask,
         int order)
{
 struct oom_control oc = {
  .zonelist = ((void*)0),
  .nodemask = ((void*)0),
  .memcg = memcg,
  .gfp_mask = gfp_mask,
  .order = order,
 };
 bool ret;

 if (mutex_lock_killable(&oom_lock))
  return 1;




 ret = should_force_charge() || out_of_memory(&oc);
 mutex_unlock(&oom_lock);
 return ret;
}
