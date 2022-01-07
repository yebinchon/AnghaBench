
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct worker {int dummy; } ;
struct TYPE_3__ {int flags; } ;


 int PF_WQ_WORKER ;
 TYPE_1__* current ;
 scalar_t__ in_task () ;
 struct worker* kthread_data (TYPE_1__*) ;

__attribute__((used)) static inline struct worker *current_wq_worker(void)
{
 if (in_task() && (current->flags & PF_WQ_WORKER))
  return kthread_data(current);
 return ((void*)0);
}
