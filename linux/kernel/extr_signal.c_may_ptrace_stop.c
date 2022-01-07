
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* parent; TYPE_1__* mm; int ptrace; } ;
struct TYPE_5__ {TYPE_1__* mm; } ;
struct TYPE_4__ {int core_state; } ;


 TYPE_3__* current ;
 int likely (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline bool may_ptrace_stop(void)
{
 if (!likely(current->ptrace))
  return 0;
 if (unlikely(current->mm->core_state) &&
     unlikely(current->mm == current->parent->mm))
  return 0;

 return 1;
}
