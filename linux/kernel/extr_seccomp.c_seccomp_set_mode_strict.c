
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* sighand; } ;
struct TYPE_4__ {int siglock; } ;


 long EINVAL ;
 unsigned long SECCOMP_MODE_STRICT ;
 TYPE_2__* current ;
 int disable_TSC () ;
 int seccomp_assign_mode (TYPE_2__*,unsigned long const,int ) ;
 int seccomp_may_assign_mode (unsigned long const) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static long seccomp_set_mode_strict(void)
{
 const unsigned long seccomp_mode = SECCOMP_MODE_STRICT;
 long ret = -EINVAL;

 spin_lock_irq(&current->sighand->siglock);

 if (!seccomp_may_assign_mode(seccomp_mode))
  goto out;




 seccomp_assign_mode(current, seccomp_mode, 0);
 ret = 0;

out:
 spin_unlock_irq(&current->sighand->siglock);

 return ret;
}
