
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_mr_pool {scalar_t__ max_items; scalar_t__ pool_type; int item_count; } ;
struct rds_ib_mr {int dummy; } ;


 scalar_t__ RDS_IB_MR_8K_POOL ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_inc_return (int *) ;
 int rds_ib_flush_mr_pool (struct rds_ib_mr_pool*,int ,struct rds_ib_mr**) ;
 struct rds_ib_mr* rds_ib_reuse_mr (struct rds_ib_mr_pool*) ;
 int rds_ib_stats_inc (int ) ;
 int s_ib_rdma_mr_1m_pool_depleted ;
 int s_ib_rdma_mr_1m_pool_wait ;
 int s_ib_rdma_mr_8k_pool_depleted ;
 int s_ib_rdma_mr_8k_pool_wait ;

struct rds_ib_mr *rds_ib_try_reuse_ibmr(struct rds_ib_mr_pool *pool)
{
 struct rds_ib_mr *ibmr = ((void*)0);
 int iter = 0;

 while (1) {
  ibmr = rds_ib_reuse_mr(pool);
  if (ibmr)
   return ibmr;

  if (atomic_inc_return(&pool->item_count) <= pool->max_items)
   break;

  atomic_dec(&pool->item_count);

  if (++iter > 2) {
   if (pool->pool_type == RDS_IB_MR_8K_POOL)
    rds_ib_stats_inc(s_ib_rdma_mr_8k_pool_depleted);
   else
    rds_ib_stats_inc(s_ib_rdma_mr_1m_pool_depleted);
   break;
  }


  if (pool->pool_type == RDS_IB_MR_8K_POOL)
   rds_ib_stats_inc(s_ib_rdma_mr_8k_pool_wait);
  else
   rds_ib_stats_inc(s_ib_rdma_mr_1m_pool_wait);

  rds_ib_flush_mr_pool(pool, 0, &ibmr);
  if (ibmr)
   return ibmr;
 }

 return ((void*)0);
}
