
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int entry; TYPE_3__* private; int func; scalar_t__ flags; } ;
struct oom_wait_info {TYPE_1__ wait; struct mem_cgroup* memcg; } ;
struct mem_cgroup {int css; int oom_kill_disable; } ;
struct TYPE_5__ {struct mem_cgroup* memcg_in_oom; int memcg_oom_order; int memcg_oom_gfp_mask; } ;


 int INIT_LIST_HEAD (int *) ;
 int TASK_KILLABLE ;
 int css_put (int *) ;
 TYPE_3__* current ;
 int finish_wait (int *,TYPE_1__*) ;
 int mem_cgroup_mark_under_oom (struct mem_cgroup*) ;
 int mem_cgroup_oom_notify (struct mem_cgroup*) ;
 int mem_cgroup_oom_trylock (struct mem_cgroup*) ;
 int mem_cgroup_oom_unlock (struct mem_cgroup*) ;
 int mem_cgroup_out_of_memory (struct mem_cgroup*,int ,int ) ;
 int mem_cgroup_unmark_under_oom (struct mem_cgroup*) ;
 int memcg_oom_recover (struct mem_cgroup*) ;
 int memcg_oom_waitq ;
 int memcg_oom_wake_function ;
 int prepare_to_wait (int *,TYPE_1__*,int ) ;
 int schedule () ;

bool mem_cgroup_oom_synchronize(bool handle)
{
 struct mem_cgroup *memcg = current->memcg_in_oom;
 struct oom_wait_info owait;
 bool locked;


 if (!memcg)
  return 0;

 if (!handle)
  goto cleanup;

 owait.memcg = memcg;
 owait.wait.flags = 0;
 owait.wait.func = memcg_oom_wake_function;
 owait.wait.private = current;
 INIT_LIST_HEAD(&owait.wait.entry);

 prepare_to_wait(&memcg_oom_waitq, &owait.wait, TASK_KILLABLE);
 mem_cgroup_mark_under_oom(memcg);

 locked = mem_cgroup_oom_trylock(memcg);

 if (locked)
  mem_cgroup_oom_notify(memcg);

 if (locked && !memcg->oom_kill_disable) {
  mem_cgroup_unmark_under_oom(memcg);
  finish_wait(&memcg_oom_waitq, &owait.wait);
  mem_cgroup_out_of_memory(memcg, current->memcg_oom_gfp_mask,
      current->memcg_oom_order);
 } else {
  schedule();
  mem_cgroup_unmark_under_oom(memcg);
  finish_wait(&memcg_oom_waitq, &owait.wait);
 }

 if (locked) {
  mem_cgroup_oom_unlock(memcg);





  memcg_oom_recover(memcg);
 }
cleanup:
 current->memcg_in_oom = ((void*)0);
 css_put(&memcg->css);
 return 1;
}
