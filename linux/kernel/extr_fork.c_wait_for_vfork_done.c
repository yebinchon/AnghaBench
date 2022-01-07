
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int * vfork_done; } ;
struct completion {int dummy; } ;


 int cgroup_enter_frozen () ;
 int cgroup_leave_frozen (int) ;
 int freezer_count () ;
 int freezer_do_not_count () ;
 int put_task_struct (struct task_struct*) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;
 int wait_for_completion_killable (struct completion*) ;

__attribute__((used)) static int wait_for_vfork_done(struct task_struct *child,
    struct completion *vfork)
{
 int killed;

 freezer_do_not_count();
 cgroup_enter_frozen();
 killed = wait_for_completion_killable(vfork);
 cgroup_leave_frozen(0);
 freezer_count();

 if (killed) {
  task_lock(child);
  child->vfork_done = ((void*)0);
  task_unlock(child);
 }

 put_task_struct(child);
 return killed;
}
