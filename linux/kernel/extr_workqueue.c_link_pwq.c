
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int pwqs; int work_color; int mutex; } ;
struct pool_workqueue {int pwqs_node; int work_color; struct workqueue_struct* wq; } ;


 int list_add_rcu (int *,int *) ;
 int list_empty (int *) ;
 int lockdep_assert_held (int *) ;
 int pwq_adjust_max_active (struct pool_workqueue*) ;

__attribute__((used)) static void link_pwq(struct pool_workqueue *pwq)
{
 struct workqueue_struct *wq = pwq->wq;

 lockdep_assert_held(&wq->mutex);


 if (!list_empty(&pwq->pwqs_node))
  return;


 pwq->work_color = wq->work_color;


 pwq_adjust_max_active(pwq);


 list_add_rcu(&pwq->pwqs_node, &wq->pwqs);
}
