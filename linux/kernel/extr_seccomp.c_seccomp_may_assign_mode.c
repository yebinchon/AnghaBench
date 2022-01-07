
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned long mode; } ;
struct TYPE_6__ {TYPE_2__ seccomp; TYPE_1__* sighand; } ;
struct TYPE_4__ {int siglock; } ;


 int assert_spin_locked (int *) ;
 TYPE_3__* current ;

__attribute__((used)) static inline bool seccomp_may_assign_mode(unsigned long seccomp_mode)
{
 assert_spin_locked(&current->sighand->siglock);

 if (current->seccomp.mode && current->seccomp.mode != seccomp_mode)
  return 0;

 return 1;
}
