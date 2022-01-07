
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_mr_pool {int max_free_pinned; int max_items; int flush_worker; int dirty_count; int free_pinned; } ;
struct rds_ib_mr {int sg_len; struct rds_ib_device* device; struct rds_ib_mr_pool* pool; } ;
struct rds_ib_device {scalar_t__ use_fastreg; } ;


 int atomic_add (int ,int *) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int in_interrupt () ;
 scalar_t__ likely (int) ;
 int queue_delayed_work (int ,int *,int) ;
 int rds_ib_dev_put (struct rds_ib_device*) ;
 int rds_ib_flush_mr_pool (struct rds_ib_mr_pool*,int ,int *) ;
 int rds_ib_free_fmr_list (struct rds_ib_mr*) ;
 int rds_ib_free_frmr_list (struct rds_ib_mr*) ;
 int rds_ib_mr_wq ;
 int rdsdebug (char*,int ) ;

void rds_ib_free_mr(void *trans_private, int invalidate)
{
 struct rds_ib_mr *ibmr = trans_private;
 struct rds_ib_mr_pool *pool = ibmr->pool;
 struct rds_ib_device *rds_ibdev = ibmr->device;

 rdsdebug("RDS/IB: free_mr nents %u\n", ibmr->sg_len);


 if (rds_ibdev->use_fastreg)
  rds_ib_free_frmr_list(ibmr);
 else
  rds_ib_free_fmr_list(ibmr);

 atomic_add(ibmr->sg_len, &pool->free_pinned);
 atomic_inc(&pool->dirty_count);


 if (atomic_read(&pool->free_pinned) >= pool->max_free_pinned ||
     atomic_read(&pool->dirty_count) >= pool->max_items / 5)
  queue_delayed_work(rds_ib_mr_wq, &pool->flush_worker, 10);

 if (invalidate) {
  if (likely(!in_interrupt())) {
   rds_ib_flush_mr_pool(pool, 0, ((void*)0));
  } else {



   queue_delayed_work(rds_ib_mr_wq,
        &pool->flush_worker, 10);
  }
 }

 rds_ib_dev_put(rds_ibdev);
}
