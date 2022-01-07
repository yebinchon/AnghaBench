
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rds_ib_mr_pool {int free_list; int drop_list; } ;
struct rds_ib_frmr {scalar_t__ fr_state; } ;
struct TYPE_2__ {struct rds_ib_frmr frmr; } ;
struct rds_ib_mr {int llnode; TYPE_1__ u; struct rds_ib_mr_pool* pool; } ;


 scalar_t__ FRMR_IS_STALE ;
 int llist_add (int *,int *) ;

void rds_ib_free_frmr_list(struct rds_ib_mr *ibmr)
{
 struct rds_ib_mr_pool *pool = ibmr->pool;
 struct rds_ib_frmr *frmr = &ibmr->u.frmr;

 if (frmr->fr_state == FRMR_IS_STALE)
  llist_add(&ibmr->llnode, &pool->drop_list);
 else
  llist_add(&ibmr->llnode, &pool->free_list);
}
