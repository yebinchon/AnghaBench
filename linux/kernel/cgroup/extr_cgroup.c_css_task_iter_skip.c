
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct TYPE_2__* next; } ;
struct task_struct {TYPE_1__ cg_list; } ;
struct css_task_iter {int flags; TYPE_1__* task_pos; } ;


 int CSS_TASK_ITER_SKIPPED ;
 int css_set_lock ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void css_task_iter_skip(struct css_task_iter *it,
          struct task_struct *task)
{
 lockdep_assert_held(&css_set_lock);

 if (it->task_pos == &task->cg_list) {
  it->task_pos = it->task_pos->next;
  it->flags |= CSS_TASK_ITER_SKIPPED;
 }
}
