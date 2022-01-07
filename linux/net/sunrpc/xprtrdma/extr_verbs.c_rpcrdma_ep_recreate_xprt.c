
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_ia {int ri_pd; int ri_id; } ;
struct rpcrdma_xprt {struct rpcrdma_ia rx_ia; } ;
struct ib_qp_init_attr {int dummy; } ;


 int EHOSTUNREACH ;
 int ENETUNREACH ;
 int ENOMEM ;
 int pr_err (char*,int) ;
 int rdma_create_qp (int ,int ,struct ib_qp_init_attr*) ;
 int rpcrdma_ep_create (struct rpcrdma_xprt*) ;
 int rpcrdma_ep_destroy (struct rpcrdma_xprt*) ;
 int rpcrdma_ia_close (struct rpcrdma_ia*) ;
 scalar_t__ rpcrdma_ia_open (struct rpcrdma_xprt*) ;
 int rpcrdma_mrs_create (struct rpcrdma_xprt*) ;
 int trace_xprtrdma_reinsert (struct rpcrdma_xprt*) ;

__attribute__((used)) static int rpcrdma_ep_recreate_xprt(struct rpcrdma_xprt *r_xprt,
        struct ib_qp_init_attr *qp_init_attr)
{
 struct rpcrdma_ia *ia = &r_xprt->rx_ia;
 int rc, err;

 trace_xprtrdma_reinsert(r_xprt);

 rc = -EHOSTUNREACH;
 if (rpcrdma_ia_open(r_xprt))
  goto out1;

 rc = -ENOMEM;
 err = rpcrdma_ep_create(r_xprt);
 if (err) {
  pr_err("rpcrdma: rpcrdma_ep_create returned %d\n", err);
  goto out2;
 }

 rc = -ENETUNREACH;
 err = rdma_create_qp(ia->ri_id, ia->ri_pd, qp_init_attr);
 if (err) {
  pr_err("rpcrdma: rdma_create_qp returned %d\n", err);
  goto out3;
 }

 rpcrdma_mrs_create(r_xprt);
 return 0;

out3:
 rpcrdma_ep_destroy(r_xprt);
out2:
 rpcrdma_ia_close(ia);
out1:
 return rc;
}
