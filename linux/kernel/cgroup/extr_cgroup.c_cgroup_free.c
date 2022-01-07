
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct css_set {int dummy; } ;


 int put_css_set (struct css_set*) ;
 struct css_set* task_css_set (struct task_struct*) ;

void cgroup_free(struct task_struct *task)
{
 struct css_set *cset = task_css_set(task);
 put_css_set(cset);
}
