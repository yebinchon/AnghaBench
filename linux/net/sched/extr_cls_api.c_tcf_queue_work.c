
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int work_func_t ;
struct rcu_work {int dummy; } ;


 int INIT_RCU_WORK (struct rcu_work*,int ) ;
 int queue_rcu_work (int ,struct rcu_work*) ;
 int tc_filter_wq ;

bool tcf_queue_work(struct rcu_work *rwork, work_func_t func)
{
 INIT_RCU_WORK(rwork, func);
 return queue_rcu_work(tc_filter_wq, rwork);
}
