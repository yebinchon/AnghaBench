
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct freezer {int css; } ;
struct css_task_iter {int dummy; } ;


 int css_task_iter_end (struct css_task_iter*) ;
 struct task_struct* css_task_iter_next (struct css_task_iter*) ;
 int css_task_iter_start (int *,int ,struct css_task_iter*) ;
 int freeze_task (struct task_struct*) ;

__attribute__((used)) static void freeze_cgroup(struct freezer *freezer)
{
 struct css_task_iter it;
 struct task_struct *task;

 css_task_iter_start(&freezer->css, 0, &it);
 while ((task = css_task_iter_next(&it)))
  freeze_task(task);
 css_task_iter_end(&it);
}
