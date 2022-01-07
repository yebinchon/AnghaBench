
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_work {int work; } ;


 int WORK_STRUCT_PENDING_BIT ;
 int flush_work (int *) ;
 int rcu_barrier () ;
 scalar_t__ test_bit (int ,int ) ;
 int work_data_bits (int *) ;

bool flush_rcu_work(struct rcu_work *rwork)
{
 if (test_bit(WORK_STRUCT_PENDING_BIT, work_data_bits(&rwork->work))) {
  rcu_barrier();
  flush_work(&rwork->work);
  return 1;
 } else {
  return flush_work(&rwork->work);
 }
}
