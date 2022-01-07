
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int flags; int cg_list; } ;
struct css_set {int tasks; int mg_tasks; } ;


 int PF_EXITING ;
 int WARN_ON_ONCE (int) ;
 int cgroup_move_task (struct task_struct*,struct css_set*) ;
 int css_set_lock ;
 int css_set_populated (struct css_set*) ;
 int css_set_skip_task_iters (struct css_set*,struct task_struct*) ;
 int css_set_update_populated (struct css_set*,int) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void css_set_move_task(struct task_struct *task,
         struct css_set *from_cset, struct css_set *to_cset,
         bool use_mg_tasks)
{
 lockdep_assert_held(&css_set_lock);

 if (to_cset && !css_set_populated(to_cset))
  css_set_update_populated(to_cset, 1);

 if (from_cset) {
  WARN_ON_ONCE(list_empty(&task->cg_list));

  css_set_skip_task_iters(from_cset, task);
  list_del_init(&task->cg_list);
  if (!css_set_populated(from_cset))
   css_set_update_populated(from_cset, 0);
 } else {
  WARN_ON_ONCE(!list_empty(&task->cg_list));
 }

 if (to_cset) {






  WARN_ON_ONCE(task->flags & PF_EXITING);

  cgroup_move_task(task, to_cset);
  list_add_tail(&task->cg_list, use_mg_tasks ? &to_cset->mg_tasks :
            &to_cset->tasks);
 }
}
