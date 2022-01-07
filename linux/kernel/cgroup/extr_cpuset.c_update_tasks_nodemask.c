
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
struct css_task_iter {int dummy; } ;
struct cpuset {int old_mems_allowed; int mems_allowed; int css; } ;
typedef int nodemask_t ;


 struct cpuset* cpuset_being_rebound ;
 int cpuset_change_task_nodemask (struct task_struct*,int *) ;
 int cpuset_migrate_mm (struct mm_struct*,int *,int *) ;
 int css_task_iter_end (struct css_task_iter*) ;
 struct task_struct* css_task_iter_next (struct css_task_iter*) ;
 int css_task_iter_start (int *,int ,struct css_task_iter*) ;
 struct mm_struct* get_task_mm (struct task_struct*) ;
 int guarantee_online_mems (struct cpuset*,int *) ;
 int is_memory_migrate (struct cpuset*) ;
 int mmput (struct mm_struct*) ;
 int mpol_rebind_mm (struct mm_struct*,int *) ;

__attribute__((used)) static void update_tasks_nodemask(struct cpuset *cs)
{
 static nodemask_t newmems;
 struct css_task_iter it;
 struct task_struct *task;

 cpuset_being_rebound = cs;

 guarantee_online_mems(cs, &newmems);
 css_task_iter_start(&cs->css, 0, &it);
 while ((task = css_task_iter_next(&it))) {
  struct mm_struct *mm;
  bool migrate;

  cpuset_change_task_nodemask(task, &newmems);

  mm = get_task_mm(task);
  if (!mm)
   continue;

  migrate = is_memory_migrate(cs);

  mpol_rebind_mm(mm, &cs->mems_allowed);
  if (migrate)
   cpuset_migrate_mm(mm, &cs->old_mems_allowed, &newmems);
  else
   mmput(mm);
 }
 css_task_iter_end(&it);





 cs->old_mems_allowed = newmems;


 cpuset_being_rebound = ((void*)0);
}
