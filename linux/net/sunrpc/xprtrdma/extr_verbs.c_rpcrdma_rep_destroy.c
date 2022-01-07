
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_rep {int rr_rdmabuf; } ;


 int kfree (struct rpcrdma_rep*) ;
 int rpcrdma_regbuf_free (int ) ;

__attribute__((used)) static void rpcrdma_rep_destroy(struct rpcrdma_rep *rep)
{
 rpcrdma_regbuf_free(rep->rr_rdmabuf);
 kfree(rep);
}
