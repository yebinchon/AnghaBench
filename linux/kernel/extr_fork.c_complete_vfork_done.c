
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct completion* vfork_done; } ;
struct completion {int dummy; } ;


 int complete (struct completion*) ;
 scalar_t__ likely (struct completion*) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

__attribute__((used)) static void complete_vfork_done(struct task_struct *tsk)
{
 struct completion *vfork;

 task_lock(tsk);
 vfork = tsk->vfork_done;
 if (likely(vfork)) {
  tsk->vfork_done = ((void*)0);
  complete(vfork);
 }
 task_unlock(tsk);
}
