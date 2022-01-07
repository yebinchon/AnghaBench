
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wait_opts {int wo_flags; scalar_t__ notask_error; } ;
struct task_struct {int ptrace; int exit_state; } ;


 int EXIT_DEAD ;
 int EXIT_TRACE ;
 int EXIT_ZOMBIE ;
 int READ_ONCE (int ) ;
 int WCONTINUED ;
 int WEXITED ;
 int delay_group_leader (struct task_struct*) ;
 int eligible_child (struct wait_opts*,int,struct task_struct*) ;
 scalar_t__ likely (int) ;
 int ptrace_reparented (struct task_struct*) ;
 scalar_t__ unlikely (int) ;
 int wait_task_continued (struct wait_opts*,struct task_struct*) ;
 int wait_task_stopped (struct wait_opts*,int,struct task_struct*) ;
 int wait_task_zombie (struct wait_opts*,struct task_struct*) ;

__attribute__((used)) static int wait_consider_task(struct wait_opts *wo, int ptrace,
    struct task_struct *p)
{





 int exit_state = READ_ONCE(p->exit_state);
 int ret;

 if (unlikely(exit_state == EXIT_DEAD))
  return 0;

 ret = eligible_child(wo, ptrace, p);
 if (!ret)
  return ret;

 if (unlikely(exit_state == EXIT_TRACE)) {




  if (likely(!ptrace))
   wo->notask_error = 0;
  return 0;
 }

 if (likely(!ptrace) && unlikely(p->ptrace)) {
  if (!ptrace_reparented(p))
   ptrace = 1;
 }


 if (exit_state == EXIT_ZOMBIE) {

  if (!delay_group_leader(p)) {





   if (unlikely(ptrace) || likely(!p->ptrace))
    return wait_task_zombie(wo, p);
  }
  if (likely(!ptrace) || (wo->wo_flags & (WCONTINUED | WEXITED)))
   wo->notask_error = 0;
 } else {




  wo->notask_error = 0;
 }





 ret = wait_task_stopped(wo, ptrace, p);
 if (ret)
  return ret;






 return wait_task_continued(wo, p);
}
