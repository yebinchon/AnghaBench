
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;
struct work_struct {int dummy; } ;
struct rcu_work {int rcu; struct workqueue_struct* wq; struct work_struct work; } ;


 int WORK_STRUCT_PENDING_BIT ;
 int call_rcu (int *,int ) ;
 int rcu_work_rcufn ;
 int test_and_set_bit (int ,int ) ;
 int work_data_bits (struct work_struct*) ;

bool queue_rcu_work(struct workqueue_struct *wq, struct rcu_work *rwork)
{
 struct work_struct *work = &rwork->work;

 if (!test_and_set_bit(WORK_STRUCT_PENDING_BIT, work_data_bits(work))) {
  rwork->wq = wq;
  call_rcu(&rwork->rcu, rcu_work_rcufn);
  return 1;
 }

 return 0;
}
