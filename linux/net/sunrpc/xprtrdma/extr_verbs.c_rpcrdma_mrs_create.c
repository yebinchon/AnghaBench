
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int mrs_allocated; } ;
struct rpcrdma_ia {unsigned int ri_max_segs; } ;
struct rpcrdma_buffer {int rb_lock; int rb_all_mrs; int rb_mrs; } ;
struct rpcrdma_xprt {TYPE_1__ rx_stats; struct rpcrdma_ia rx_ia; struct rpcrdma_buffer rx_buf; } ;
struct rpcrdma_mr {int mr_all; int mr_list; struct rpcrdma_xprt* mr_xprt; } ;


 int GFP_NOFS ;
 int frwr_init_mr (struct rpcrdma_ia*,struct rpcrdma_mr*) ;
 int kfree (struct rpcrdma_mr*) ;
 struct rpcrdma_mr* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_xprtrdma_createmrs (struct rpcrdma_xprt*,unsigned int) ;

__attribute__((used)) static void
rpcrdma_mrs_create(struct rpcrdma_xprt *r_xprt)
{
 struct rpcrdma_buffer *buf = &r_xprt->rx_buf;
 struct rpcrdma_ia *ia = &r_xprt->rx_ia;
 unsigned int count;

 for (count = 0; count < ia->ri_max_segs; count++) {
  struct rpcrdma_mr *mr;
  int rc;

  mr = kzalloc(sizeof(*mr), GFP_NOFS);
  if (!mr)
   break;

  rc = frwr_init_mr(ia, mr);
  if (rc) {
   kfree(mr);
   break;
  }

  mr->mr_xprt = r_xprt;

  spin_lock(&buf->rb_lock);
  list_add(&mr->mr_list, &buf->rb_mrs);
  list_add(&mr->mr_all, &buf->rb_all_mrs);
  spin_unlock(&buf->rb_lock);
 }

 r_xprt->rx_stats.mrs_allocated += count;
 trace_xprtrdma_createmrs(r_xprt, count);
}
