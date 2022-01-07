
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wait_queue_head_t ;
struct xa_state {int dummy; } ;
struct TYPE_4__ {int func; } ;
struct wait_exceptional_entry_queue {TYPE_1__ wait; int key; } ;


 int TASK_UNINTERRUPTIBLE ;
 int * dax_entry_waitqueue (struct xa_state*,void*,int *) ;
 int finish_wait (int *,TYPE_1__*) ;
 int init_wait (TYPE_1__*) ;
 int prepare_to_wait (int *,TYPE_1__*,int ) ;
 int schedule () ;
 int wake_exceptional_entry_func ;
 int xas_unlock_irq (struct xa_state*) ;

__attribute__((used)) static void wait_entry_unlocked(struct xa_state *xas, void *entry)
{
 struct wait_exceptional_entry_queue ewait;
 wait_queue_head_t *wq;

 init_wait(&ewait.wait);
 ewait.wait.func = wake_exceptional_entry_func;

 wq = dax_entry_waitqueue(xas, entry, &ewait.key);






 prepare_to_wait(wq, &ewait.wait, TASK_UNINTERRUPTIBLE);
 xas_unlock_irq(xas);
 schedule();
 finish_wait(wq, &ewait.wait);
}
