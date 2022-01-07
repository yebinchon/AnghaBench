
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {scalar_t__ num_reqs; scalar_t__ max_reqs; int reserve_lock; } ;
struct rpc_rqst {int dummy; } ;


 int EAGAIN ;
 int ENOMEM ;
 struct rpc_rqst* ERR_PTR (int ) ;
 int GFP_NOFS ;
 struct rpc_rqst* kzalloc (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct rpc_rqst *xprt_dynamic_alloc_slot(struct rpc_xprt *xprt)
{
 struct rpc_rqst *req = ERR_PTR(-EAGAIN);

 if (xprt->num_reqs >= xprt->max_reqs)
  goto out;
 ++xprt->num_reqs;
 spin_unlock(&xprt->reserve_lock);
 req = kzalloc(sizeof(struct rpc_rqst), GFP_NOFS);
 spin_lock(&xprt->reserve_lock);
 if (req != ((void*)0))
  goto out;
 --xprt->num_reqs;
 req = ERR_PTR(-ENOMEM);
out:
 return req;
}
