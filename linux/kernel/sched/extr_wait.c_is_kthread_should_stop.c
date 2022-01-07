
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int PF_KTHREAD ;
 TYPE_1__* current ;
 scalar_t__ kthread_should_stop () ;

__attribute__((used)) static inline bool is_kthread_should_stop(void)
{
 return (current->flags & PF_KTHREAD) && kthread_should_stop();
}
