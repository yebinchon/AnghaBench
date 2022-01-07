
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mem_cgroup {int dummy; } ;
struct TYPE_2__ {scalar_t__ moving_task; int waitq; } ;


 int DEFINE_WAIT (int ) ;
 int TASK_INTERRUPTIBLE ;
 scalar_t__ current ;
 int finish_wait (int *,int *) ;
 TYPE_1__ mc ;
 scalar_t__ mem_cgroup_under_move (struct mem_cgroup*) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 int wait ;

__attribute__((used)) static bool mem_cgroup_wait_acct_move(struct mem_cgroup *memcg)
{
 if (mc.moving_task && current != mc.moving_task) {
  if (mem_cgroup_under_move(memcg)) {
   DEFINE_WAIT(wait);
   prepare_to_wait(&mc.waitq, &wait, TASK_INTERRUPTIBLE);

   if (mc.moving_task)
    schedule();
   finish_wait(&mc.waitq, &wait);
   return 1;
  }
 }
 return 0;
}
