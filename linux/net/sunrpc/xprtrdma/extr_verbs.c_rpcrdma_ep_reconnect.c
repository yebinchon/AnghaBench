
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_ia {struct rdma_cm_id* ri_id; int ri_pd; } ;
struct rpcrdma_xprt {int rx_ep; struct rpcrdma_ia rx_ia; } ;
struct rdma_cm_id {scalar_t__ device; } ;
struct ib_qp_init_attr {int dummy; } ;


 int EHOSTUNREACH ;
 int ENETUNREACH ;
 scalar_t__ IS_ERR (struct rdma_cm_id*) ;
 int pr_err (char*) ;
 int rdma_create_qp (struct rdma_cm_id*,int ,struct ib_qp_init_attr*) ;
 int rdma_destroy_id (struct rdma_cm_id*) ;
 int rdma_destroy_qp (struct rdma_cm_id*) ;
 struct rdma_cm_id* rpcrdma_create_id (struct rpcrdma_xprt*,struct rpcrdma_ia*) ;
 int rpcrdma_ep_disconnect (int *,struct rpcrdma_ia*) ;
 int trace_xprtrdma_reconnect (struct rpcrdma_xprt*) ;

__attribute__((used)) static int rpcrdma_ep_reconnect(struct rpcrdma_xprt *r_xprt,
    struct ib_qp_init_attr *qp_init_attr)
{
 struct rpcrdma_ia *ia = &r_xprt->rx_ia;
 struct rdma_cm_id *id, *old;
 int err, rc;

 trace_xprtrdma_reconnect(r_xprt);

 rpcrdma_ep_disconnect(&r_xprt->rx_ep, ia);

 rc = -EHOSTUNREACH;
 id = rpcrdma_create_id(r_xprt, ia);
 if (IS_ERR(id))
  goto out;
 old = id;
 rc = -ENETUNREACH;
 if (ia->ri_id->device != id->device) {
  pr_err("rpcrdma: can't reconnect on different device!\n");
  goto out_destroy;
 }

 err = rdma_create_qp(id, ia->ri_pd, qp_init_attr);
 if (err)
  goto out_destroy;


 rc = 0;
 old = ia->ri_id;
 ia->ri_id = id;
 rdma_destroy_qp(old);

out_destroy:
 rdma_destroy_id(old);
out:
 return rc;
}
