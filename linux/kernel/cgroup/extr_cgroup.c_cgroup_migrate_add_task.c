
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int flags; int cg_list; } ;
struct css_set {TYPE_1__* mg_dst_cset; int mg_node; int mg_tasks; int mg_src_cgrp; } ;
struct TYPE_4__ {int dst_csets; int src_csets; int nr_tasks; } ;
struct cgroup_mgctx {TYPE_2__ tset; } ;
struct TYPE_3__ {int mg_node; } ;


 int PF_EXITING ;
 int css_set_lock ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int list_move_tail (int *,int *) ;
 int lockdep_assert_held (int *) ;
 struct css_set* task_css_set (struct task_struct*) ;

__attribute__((used)) static void cgroup_migrate_add_task(struct task_struct *task,
        struct cgroup_mgctx *mgctx)
{
 struct css_set *cset;

 lockdep_assert_held(&css_set_lock);


 if (task->flags & PF_EXITING)
  return;


 if (list_empty(&task->cg_list))
  return;

 cset = task_css_set(task);
 if (!cset->mg_src_cgrp)
  return;

 mgctx->tset.nr_tasks++;

 list_move_tail(&task->cg_list, &cset->mg_tasks);
 if (list_empty(&cset->mg_node))
  list_add_tail(&cset->mg_node,
         &mgctx->tset.src_csets);
 if (list_empty(&cset->mg_dst_cset->mg_node))
  list_add_tail(&cset->mg_dst_cset->mg_node,
         &mgctx->tset.dst_csets);
}
