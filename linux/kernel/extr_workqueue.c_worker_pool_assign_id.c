
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker_pool {int id; } ;


 int GFP_KERNEL ;
 int WORK_OFFQ_POOL_NONE ;
 int idr_alloc (int *,struct worker_pool*,int ,int ,int ) ;
 int lockdep_assert_held (int *) ;
 int worker_pool_idr ;
 int wq_pool_mutex ;

__attribute__((used)) static int worker_pool_assign_id(struct worker_pool *pool)
{
 int ret;

 lockdep_assert_held(&wq_pool_mutex);

 ret = idr_alloc(&worker_pool_idr, pool, 0, WORK_OFFQ_POOL_NONE,
   GFP_KERNEL);
 if (ret >= 0) {
  pool->id = ret;
  return 0;
 }
 return ret;
}
