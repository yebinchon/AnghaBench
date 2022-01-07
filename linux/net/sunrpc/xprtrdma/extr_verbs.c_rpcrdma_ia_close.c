
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct rpcrdma_ia {TYPE_1__* ri_pd; TYPE_1__* ri_id; } ;
struct TYPE_5__ {scalar_t__ qp; } ;


 int IS_ERR (TYPE_1__*) ;
 int ib_dealloc_pd (TYPE_1__*) ;
 int rdma_destroy_id (TYPE_1__*) ;
 int rdma_destroy_qp (TYPE_1__*) ;

void
rpcrdma_ia_close(struct rpcrdma_ia *ia)
{
 if (ia->ri_id != ((void*)0) && !IS_ERR(ia->ri_id)) {
  if (ia->ri_id->qp)
   rdma_destroy_qp(ia->ri_id);
  rdma_destroy_id(ia->ri_id);
 }
 ia->ri_id = ((void*)0);


 if (ia->ri_pd && !IS_ERR(ia->ri_pd))
  ib_dealloc_pd(ia->ri_pd);
 ia->ri_pd = ((void*)0);
}
