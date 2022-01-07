
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;
struct workqueue_attrs {int dummy; } ;


 int apply_workqueue_attrs_locked (struct workqueue_struct*,struct workqueue_attrs const*) ;
 int lockdep_assert_cpus_held () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wq_pool_mutex ;

int apply_workqueue_attrs(struct workqueue_struct *wq,
     const struct workqueue_attrs *attrs)
{
 int ret;

 lockdep_assert_cpus_held();

 mutex_lock(&wq_pool_mutex);
 ret = apply_workqueue_attrs_locked(wq, attrs);
 mutex_unlock(&wq_pool_mutex);

 return ret;
}
