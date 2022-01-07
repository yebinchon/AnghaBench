
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rds_sock {int rs_rdma_lock; int rs_rdma_keys; } ;
struct rds_mr {int r_trans_private; TYPE_1__* r_trans; int r_rb_node; scalar_t__ r_use_once; } ;
struct TYPE_2__ {int (* sync_mr ) (int ,int ) ;} ;


 int DMA_FROM_DEVICE ;
 int RB_CLEAR_NODE (int *) ;
 int pr_debug (char*,int ) ;
 int rb_erase (int *,int *) ;
 int rds_destroy_mr (struct rds_mr*) ;
 int rds_mr_put (struct rds_mr*) ;
 struct rds_mr* rds_mr_tree_walk (int *,int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int ) ;

void rds_rdma_unuse(struct rds_sock *rs, u32 r_key, int force)
{
 struct rds_mr *mr;
 unsigned long flags;
 int zot_me = 0;

 spin_lock_irqsave(&rs->rs_rdma_lock, flags);
 mr = rds_mr_tree_walk(&rs->rs_rdma_keys, r_key, ((void*)0));
 if (!mr) {
  pr_debug("rds: trying to unuse MR with unknown r_key %u!\n",
    r_key);
  spin_unlock_irqrestore(&rs->rs_rdma_lock, flags);
  return;
 }

 if (mr->r_use_once || force) {
  rb_erase(&mr->r_rb_node, &rs->rs_rdma_keys);
  RB_CLEAR_NODE(&mr->r_rb_node);
  zot_me = 1;
 }
 spin_unlock_irqrestore(&rs->rs_rdma_lock, flags);




 if (mr->r_trans->sync_mr)
  mr->r_trans->sync_mr(mr->r_trans_private, DMA_FROM_DEVICE);



 if (zot_me) {
  rds_destroy_mr(mr);
  rds_mr_put(mr);
 }
}
