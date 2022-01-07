
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {unsigned int max_reqs; unsigned int min_reqs; unsigned int num_reqs; int free; } ;
struct rpc_rqst {int rq_list; } ;
struct net {int dummy; } ;


 int GFP_KERNEL ;
 void* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int xprt_free (struct rpc_xprt*) ;
 int xprt_init (struct rpc_xprt*,struct net*) ;

struct rpc_xprt *xprt_alloc(struct net *net, size_t size,
  unsigned int num_prealloc,
  unsigned int max_alloc)
{
 struct rpc_xprt *xprt;
 struct rpc_rqst *req;
 int i;

 xprt = kzalloc(size, GFP_KERNEL);
 if (xprt == ((void*)0))
  goto out;

 xprt_init(xprt, net);

 for (i = 0; i < num_prealloc; i++) {
  req = kzalloc(sizeof(struct rpc_rqst), GFP_KERNEL);
  if (!req)
   goto out_free;
  list_add(&req->rq_list, &xprt->free);
 }
 if (max_alloc > num_prealloc)
  xprt->max_reqs = max_alloc;
 else
  xprt->max_reqs = num_prealloc;
 xprt->min_reqs = num_prealloc;
 xprt->num_reqs = num_prealloc;

 return xprt;

out_free:
 xprt_free(xprt);
out:
 return ((void*)0);
}
