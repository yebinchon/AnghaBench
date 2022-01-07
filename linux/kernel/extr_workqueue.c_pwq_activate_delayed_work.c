
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct pool_workqueue {int nr_active; TYPE_1__* pool; } ;
struct TYPE_2__ {int worklist; int watchdog_ts; } ;


 int WORK_STRUCT_DELAYED_BIT ;
 int __clear_bit (int ,int ) ;
 struct pool_workqueue* get_work_pwq (struct work_struct*) ;
 int jiffies ;
 scalar_t__ list_empty (int *) ;
 int move_linked_works (struct work_struct*,int *,int *) ;
 int trace_workqueue_activate_work (struct work_struct*) ;
 int work_data_bits (struct work_struct*) ;

__attribute__((used)) static void pwq_activate_delayed_work(struct work_struct *work)
{
 struct pool_workqueue *pwq = get_work_pwq(work);

 trace_workqueue_activate_work(work);
 if (list_empty(&pwq->pool->worklist))
  pwq->pool->watchdog_ts = jiffies;
 move_linked_works(work, &pwq->pool->worklist, ((void*)0));
 __clear_bit(WORK_STRUCT_DELAYED_BIT, work_data_bits(work));
 pwq->nr_active++;
}
