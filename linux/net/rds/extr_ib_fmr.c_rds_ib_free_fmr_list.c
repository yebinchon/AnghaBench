
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ max_maps; } ;
struct rds_ib_mr_pool {int free_list; int drop_list; TYPE_1__ fmr_attr; } ;
struct rds_ib_mr {scalar_t__ remap_count; int llnode; struct rds_ib_mr_pool* pool; } ;


 int llist_add (int *,int *) ;

void rds_ib_free_fmr_list(struct rds_ib_mr *ibmr)
{
 struct rds_ib_mr_pool *pool = ibmr->pool;

 if (ibmr->remap_count >= pool->fmr_attr.max_maps)
  llist_add(&ibmr->llnode, &pool->drop_list);
 else
  llist_add(&ibmr->llnode, &pool->free_list);
}
