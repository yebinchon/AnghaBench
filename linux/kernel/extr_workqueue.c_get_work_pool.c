
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker_pool {int dummy; } ;
struct work_struct {int data; } ;
struct pool_workqueue {struct worker_pool* pool; } ;


 int WORK_OFFQ_POOL_NONE ;
 unsigned long WORK_OFFQ_POOL_SHIFT ;
 unsigned long WORK_STRUCT_PWQ ;
 unsigned long WORK_STRUCT_WQ_DATA_MASK ;
 int assert_rcu_or_pool_mutex () ;
 unsigned long atomic_long_read (int *) ;
 struct worker_pool* idr_find (int *,int) ;
 int worker_pool_idr ;

__attribute__((used)) static struct worker_pool *get_work_pool(struct work_struct *work)
{
 unsigned long data = atomic_long_read(&work->data);
 int pool_id;

 assert_rcu_or_pool_mutex();

 if (data & WORK_STRUCT_PWQ)
  return ((struct pool_workqueue *)
   (data & WORK_STRUCT_WQ_DATA_MASK))->pool;

 pool_id = data >> WORK_OFFQ_POOL_SHIFT;
 if (pool_id == WORK_OFFQ_POOL_NONE)
  return ((void*)0);

 return idr_find(&worker_pool_idr, pool_id);
}
