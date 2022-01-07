
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct workqueue_struct {TYPE_1__* rescuer; int maydays; } ;
struct work_struct {int dummy; } ;
struct pool_workqueue {int mayday_node; struct workqueue_struct* wq; } ;
struct TYPE_2__ {int task; } ;


 int get_pwq (struct pool_workqueue*) ;
 struct pool_workqueue* get_work_pwq (struct work_struct*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int lockdep_assert_held (int *) ;
 int wake_up_process (int ) ;
 int wq_mayday_lock ;

__attribute__((used)) static void send_mayday(struct work_struct *work)
{
 struct pool_workqueue *pwq = get_work_pwq(work);
 struct workqueue_struct *wq = pwq->wq;

 lockdep_assert_held(&wq_mayday_lock);

 if (!wq->rescuer)
  return;


 if (list_empty(&pwq->mayday_node)) {





  get_pwq(pwq);
  list_add_tail(&pwq->mayday_node, &wq->maydays);
  wake_up_process(wq->rescuer->task);
 }
}
