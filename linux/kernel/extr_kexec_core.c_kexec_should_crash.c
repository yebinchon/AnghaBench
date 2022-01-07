
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int pid; } ;


 scalar_t__ crash_kexec_post_notifiers ;
 scalar_t__ in_interrupt () ;
 scalar_t__ is_global_init (struct task_struct*) ;
 scalar_t__ panic_on_oops ;

int kexec_should_crash(struct task_struct *p)
{





 if (crash_kexec_post_notifiers)
  return 0;




 if (in_interrupt() || !p->pid || is_global_init(p) || panic_on_oops)
  return 1;
 return 0;
}
