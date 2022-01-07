
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {int rq_rbuffer; int rq_buffer; } ;


 int kfree (int ) ;
 int put_page (int ) ;
 int virt_to_page (int ) ;

__attribute__((used)) static void
xprt_rdma_bc_free(struct rpc_task *task)
{
 struct rpc_rqst *rqst = task->tk_rqstp;

 put_page(virt_to_page(rqst->rq_buffer));
 kfree(rqst->rq_rbuffer);
}
