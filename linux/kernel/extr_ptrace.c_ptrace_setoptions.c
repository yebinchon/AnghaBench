
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {unsigned int ptrace; } ;
struct TYPE_2__ {int ptrace; int seccomp; } ;


 int CAP_SYS_ADMIN ;
 int CONFIG_CHECKPOINT_RESTORE ;
 int CONFIG_SECCOMP ;
 int EINVAL ;
 int EPERM ;
 int IS_ENABLED (int ) ;
 unsigned int PTRACE_O_MASK ;
 unsigned long PTRACE_O_SUSPEND_SECCOMP ;
 unsigned int PT_OPT_FLAG_SHIFT ;
 int PT_SUSPEND_SECCOMP ;
 scalar_t__ SECCOMP_MODE_DISABLED ;
 int capable (int ) ;
 TYPE_1__* current ;
 scalar_t__ seccomp_mode (int *) ;
 scalar_t__ unlikely (unsigned long) ;

__attribute__((used)) static int ptrace_setoptions(struct task_struct *child, unsigned long data)
{
 unsigned flags;

 if (data & ~(unsigned long)PTRACE_O_MASK)
  return -EINVAL;

 if (unlikely(data & PTRACE_O_SUSPEND_SECCOMP)) {
  if (!IS_ENABLED(CONFIG_CHECKPOINT_RESTORE) ||
      !IS_ENABLED(CONFIG_SECCOMP))
   return -EINVAL;

  if (!capable(CAP_SYS_ADMIN))
   return -EPERM;

  if (seccomp_mode(&current->seccomp) != SECCOMP_MODE_DISABLED ||
      current->ptrace & PT_SUSPEND_SECCOMP)
   return -EPERM;
 }


 flags = child->ptrace;
 flags &= ~(PTRACE_O_MASK << PT_OPT_FLAG_SHIFT);
 flags |= (data << PT_OPT_FLAG_SHIFT);
 child->ptrace = flags;

 return 0;
}
