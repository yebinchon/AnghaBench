
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_req {int rl_rdmabuf; int rl_sendbuf; int rl_recvbuf; int rl_free_mrs; int rl_all; } ;


 int kfree (struct rpcrdma_req*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int rpcrdma_mr_free (int ) ;
 int rpcrdma_mr_pop (int *) ;
 int rpcrdma_regbuf_free (int ) ;

void rpcrdma_req_destroy(struct rpcrdma_req *req)
{
 list_del(&req->rl_all);

 while (!list_empty(&req->rl_free_mrs))
  rpcrdma_mr_free(rpcrdma_mr_pop(&req->rl_free_mrs));

 rpcrdma_regbuf_free(req->rl_recvbuf);
 rpcrdma_regbuf_free(req->rl_sendbuf);
 rpcrdma_regbuf_free(req->rl_rdmabuf);
 kfree(req);
}
