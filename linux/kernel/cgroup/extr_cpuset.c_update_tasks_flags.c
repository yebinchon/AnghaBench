
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct css_task_iter {int dummy; } ;
struct cpuset {int css; } ;


 int cpuset_update_task_spread_flag (struct cpuset*,struct task_struct*) ;
 int css_task_iter_end (struct css_task_iter*) ;
 struct task_struct* css_task_iter_next (struct css_task_iter*) ;
 int css_task_iter_start (int *,int ,struct css_task_iter*) ;

__attribute__((used)) static void update_tasks_flags(struct cpuset *cs)
{
 struct css_task_iter it;
 struct task_struct *task;

 css_task_iter_start(&cs->css, 0, &it);
 while ((task = css_task_iter_next(&it)))
  cpuset_update_task_spread_flag(cs, task);
 css_task_iter_end(&it);
}
