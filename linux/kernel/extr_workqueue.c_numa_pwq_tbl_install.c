
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int * numa_pwq_tbl; int mutex; } ;
struct pool_workqueue {int dummy; } ;


 int link_pwq (struct pool_workqueue*) ;
 int lockdep_assert_held (int *) ;
 struct pool_workqueue* rcu_access_pointer (int ) ;
 int rcu_assign_pointer (int ,struct pool_workqueue*) ;
 int wq_pool_mutex ;

__attribute__((used)) static struct pool_workqueue *numa_pwq_tbl_install(struct workqueue_struct *wq,
         int node,
         struct pool_workqueue *pwq)
{
 struct pool_workqueue *old_pwq;

 lockdep_assert_held(&wq_pool_mutex);
 lockdep_assert_held(&wq->mutex);


 link_pwq(pwq);

 old_pwq = rcu_access_pointer(wq->numa_pwq_tbl[node]);
 rcu_assign_pointer(wq->numa_pwq_tbl[node], pwq);
 return old_pwq;
}
