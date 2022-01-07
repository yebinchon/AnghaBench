
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int * numa_pwq_tbl; struct pool_workqueue* dfl_pwq; } ;
struct pool_workqueue {int dummy; } ;


 int NUMA_NO_NODE ;
 int assert_rcu_or_wq_mutex_or_pool_mutex (struct workqueue_struct*) ;
 struct pool_workqueue* rcu_dereference_raw (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct pool_workqueue *unbound_pwq_by_node(struct workqueue_struct *wq,
        int node)
{
 assert_rcu_or_wq_mutex_or_pool_mutex(wq);







 if (unlikely(node == NUMA_NO_NODE))
  return wq->dfl_pwq;

 return rcu_dereference_raw(wq->numa_pwq_tbl[node]);
}
