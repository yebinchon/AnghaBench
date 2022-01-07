
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_mr_pool {int max_free_pinned; int max_items; int flush_worker; int dirty_count; int free_pinned; int free_list; int drop_list; } ;
struct rds_ib_mr {int sg_len; int llnode; struct rds_ib_mr_pool* pool; } ;


 int atomic_add (int ,int *) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int llist_add (int *,int *) ;
 int queue_delayed_work (int ,int *,int) ;
 int rds_ib_mr_wq ;

__attribute__((used)) static void rds_ib_free_frmr(struct rds_ib_mr *ibmr, bool drop)
{
 struct rds_ib_mr_pool *pool = ibmr->pool;

 if (drop)
  llist_add(&ibmr->llnode, &pool->drop_list);
 else
  llist_add(&ibmr->llnode, &pool->free_list);
 atomic_add(ibmr->sg_len, &pool->free_pinned);
 atomic_inc(&pool->dirty_count);


 if (atomic_read(&pool->free_pinned) >= pool->max_free_pinned ||
     atomic_read(&pool->dirty_count) >= pool->max_items / 5)
  queue_delayed_work(rds_ib_mr_wq, &pool->flush_worker, 10);
}
