
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int flags; } ;


 int PF_KTHREAD ;
 scalar_t__ is_global_init (struct task_struct*) ;

__attribute__((used)) static bool oom_unkillable_task(struct task_struct *p)
{
 if (is_global_init(p))
  return 1;
 if (p->flags & PF_KTHREAD)
  return 1;
 return 0;
}
