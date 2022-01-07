
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; } ;
struct TYPE_4__ {int ptrace; TYPE_1__ seccomp; } ;


 int BUG () ;
 int CONFIG_CHECKPOINT_RESTORE ;
 scalar_t__ IS_ENABLED (int ) ;
 int PT_SUSPEND_SECCOMP ;
 int SECCOMP_MODE_DISABLED ;
 int SECCOMP_MODE_STRICT ;
 int __secure_computing_strict (int) ;
 TYPE_2__* current ;
 scalar_t__ unlikely (int) ;

void secure_computing_strict(int this_syscall)
{
 int mode = current->seccomp.mode;

 if (IS_ENABLED(CONFIG_CHECKPOINT_RESTORE) &&
     unlikely(current->ptrace & PT_SUSPEND_SECCOMP))
  return;

 if (mode == SECCOMP_MODE_DISABLED)
  return;
 else if (mode == SECCOMP_MODE_STRICT)
  __secure_computing_strict(this_syscall);
 else
  BUG();
}
