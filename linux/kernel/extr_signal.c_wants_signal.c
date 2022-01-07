
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int flags; int blocked; } ;


 int PF_EXITING ;
 int SIGKILL ;
 scalar_t__ sigismember (int *,int) ;
 int signal_pending (struct task_struct*) ;
 scalar_t__ task_curr (struct task_struct*) ;
 scalar_t__ task_is_stopped_or_traced (struct task_struct*) ;

__attribute__((used)) static inline bool wants_signal(int sig, struct task_struct *p)
{
 if (sigismember(&p->blocked, sig))
  return 0;

 if (p->flags & PF_EXITING)
  return 0;

 if (sig == SIGKILL)
  return 1;

 if (task_is_stopped_or_traced(p))
  return 0;

 return task_curr(p) || !signal_pending(p);
}
