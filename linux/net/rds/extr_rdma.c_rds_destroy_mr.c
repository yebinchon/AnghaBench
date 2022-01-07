
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rds_sock {int rs_rdma_lock; int rs_rdma_keys; } ;
struct rds_mr {int r_invalidate; TYPE_1__* r_trans; int * r_trans_private; int r_rb_node; int r_state; int r_refcount; int r_key; struct rds_sock* r_sock; } ;
struct TYPE_2__ {int (* free_mr ) (void*,int ) ;} ;


 int RB_EMPTY_NODE (int *) ;
 int RDS_MR_DEAD ;
 int rb_erase (int *,int *) ;
 int rdsdebug (char*,int ,int ) ;
 int refcount_read (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (void*,int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void rds_destroy_mr(struct rds_mr *mr)
{
 struct rds_sock *rs = mr->r_sock;
 void *trans_private = ((void*)0);
 unsigned long flags;

 rdsdebug("RDS: destroy mr key is %x refcnt %u\n",
   mr->r_key, refcount_read(&mr->r_refcount));

 if (test_and_set_bit(RDS_MR_DEAD, &mr->r_state))
  return;

 spin_lock_irqsave(&rs->rs_rdma_lock, flags);
 if (!RB_EMPTY_NODE(&mr->r_rb_node))
  rb_erase(&mr->r_rb_node, &rs->rs_rdma_keys);
 trans_private = mr->r_trans_private;
 mr->r_trans_private = ((void*)0);
 spin_unlock_irqrestore(&rs->rs_rdma_lock, flags);

 if (trans_private)
  mr->r_trans->free_mr(trans_private, mr->r_invalidate);
}
