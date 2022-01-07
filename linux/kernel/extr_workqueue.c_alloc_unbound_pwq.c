
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;
struct workqueue_attrs {int dummy; } ;
struct worker_pool {int node; } ;
struct pool_workqueue {int dummy; } ;


 int GFP_KERNEL ;
 struct worker_pool* get_unbound_pool (struct workqueue_attrs const*) ;
 int init_pwq (struct pool_workqueue*,struct workqueue_struct*,struct worker_pool*) ;
 struct pool_workqueue* kmem_cache_alloc_node (int ,int ,int ) ;
 int lockdep_assert_held (int *) ;
 int put_unbound_pool (struct worker_pool*) ;
 int pwq_cache ;
 int wq_pool_mutex ;

__attribute__((used)) static struct pool_workqueue *alloc_unbound_pwq(struct workqueue_struct *wq,
     const struct workqueue_attrs *attrs)
{
 struct worker_pool *pool;
 struct pool_workqueue *pwq;

 lockdep_assert_held(&wq_pool_mutex);

 pool = get_unbound_pool(attrs);
 if (!pool)
  return ((void*)0);

 pwq = kmem_cache_alloc_node(pwq_cache, GFP_KERNEL, pool->node);
 if (!pwq) {
  put_unbound_pool(pool);
  return ((void*)0);
 }

 init_pwq(pwq, wq, pool);
 return pwq;
}
