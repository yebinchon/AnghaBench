
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cpuset {int dummy; } ;


 scalar_t__ is_spread_page (struct cpuset*) ;
 scalar_t__ is_spread_slab (struct cpuset*) ;
 int task_clear_spread_page (struct task_struct*) ;
 int task_clear_spread_slab (struct task_struct*) ;
 int task_set_spread_page (struct task_struct*) ;
 int task_set_spread_slab (struct task_struct*) ;

__attribute__((used)) static void cpuset_update_task_spread_flag(struct cpuset *cs,
     struct task_struct *tsk)
{
 if (is_spread_page(cs))
  task_set_spread_page(tsk);
 else
  task_clear_spread_page(tsk);

 if (is_spread_slab(cs))
  task_set_spread_slab(tsk);
 else
  task_clear_spread_slab(tsk);
}
