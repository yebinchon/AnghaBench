
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int cg_list; int cgroups; } ;


 int INIT_LIST_HEAD (int *) ;
 int RCU_INIT_POINTER (int ,int *) ;
 int init_css_set ;

void cgroup_fork(struct task_struct *child)
{
 RCU_INIT_POINTER(child->cgroups, &init_css_set);
 INIT_LIST_HEAD(&child->cg_list);
}
