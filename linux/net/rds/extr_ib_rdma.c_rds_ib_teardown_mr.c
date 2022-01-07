
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_mr_pool {int free_pinned; } ;
struct rds_ib_mr {unsigned int sg_len; struct rds_ib_mr_pool* pool; } ;


 int __rds_ib_teardown_mr (struct rds_ib_mr*) ;
 int atomic_sub (unsigned int,int *) ;

void rds_ib_teardown_mr(struct rds_ib_mr *ibmr)
{
 unsigned int pinned = ibmr->sg_len;

 __rds_ib_teardown_mr(ibmr);
 if (pinned) {
  struct rds_ib_mr_pool *pool = ibmr->pool;

  atomic_sub(pinned, &pool->free_pinned);
 }
}
