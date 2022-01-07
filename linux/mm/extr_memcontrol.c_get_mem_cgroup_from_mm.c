
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int owner; } ;
struct mem_cgroup {int css; } ;


 int css_tryget_online (int *) ;
 scalar_t__ mem_cgroup_disabled () ;
 struct mem_cgroup* mem_cgroup_from_task (int ) ;
 int rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct mem_cgroup* root_mem_cgroup ;
 scalar_t__ unlikely (int) ;

struct mem_cgroup *get_mem_cgroup_from_mm(struct mm_struct *mm)
{
 struct mem_cgroup *memcg;

 if (mem_cgroup_disabled())
  return ((void*)0);

 rcu_read_lock();
 do {





  if (unlikely(!mm))
   memcg = root_mem_cgroup;
  else {
   memcg = mem_cgroup_from_task(rcu_dereference(mm->owner));
   if (unlikely(!memcg))
    memcg = root_mem_cgroup;
  }
 } while (!css_tryget_online(&memcg->css));
 rcu_read_unlock();
 return memcg;
}
