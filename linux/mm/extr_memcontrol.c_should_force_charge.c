
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;


 int PF_EXITING ;
 TYPE_1__* current ;
 scalar_t__ fatal_signal_pending (TYPE_1__*) ;
 scalar_t__ tsk_is_oom_victim (TYPE_1__*) ;

__attribute__((used)) static inline bool should_force_charge(void)
{
 return tsk_is_oom_victim(current) || fatal_signal_pending(current) ||
  (current->flags & PF_EXITING);
}
