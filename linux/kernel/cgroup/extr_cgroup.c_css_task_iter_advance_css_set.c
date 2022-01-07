
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct css_task_iter {int iters_node; struct css_set* cur_cset; TYPE_1__* dying_tasks_head; TYPE_1__* mg_tasks_head; TYPE_1__* tasks_head; int * task_pos; } ;
struct TYPE_2__ {int * next; } ;
struct css_set {int task_iters; TYPE_1__ dying_tasks; TYPE_1__ mg_tasks; TYPE_1__ tasks; } ;


 int css_set_lock ;
 int css_set_populated (struct css_set*) ;
 struct css_set* css_task_iter_next_css_set (struct css_task_iter*) ;
 int get_css_set (struct css_set*) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 scalar_t__ list_empty (TYPE_1__*) ;
 int lockdep_assert_held (int *) ;
 int put_css_set_locked (struct css_set*) ;

__attribute__((used)) static void css_task_iter_advance_css_set(struct css_task_iter *it)
{
 struct css_set *cset;

 lockdep_assert_held(&css_set_lock);


 do {
  cset = css_task_iter_next_css_set(it);
  if (!cset) {
   it->task_pos = ((void*)0);
   return;
  }
 } while (!css_set_populated(cset) && list_empty(&cset->dying_tasks));

 if (!list_empty(&cset->tasks))
  it->task_pos = cset->tasks.next;
 else if (!list_empty(&cset->mg_tasks))
  it->task_pos = cset->mg_tasks.next;
 else
  it->task_pos = cset->dying_tasks.next;

 it->tasks_head = &cset->tasks;
 it->mg_tasks_head = &cset->mg_tasks;
 it->dying_tasks_head = &cset->dying_tasks;
 if (it->cur_cset) {
  list_del(&it->iters_node);
  put_css_set_locked(it->cur_cset);
 }
 get_css_set(cset);
 it->cur_cset = cset;
 list_add(&it->iters_node, &cset->task_iters);
}
