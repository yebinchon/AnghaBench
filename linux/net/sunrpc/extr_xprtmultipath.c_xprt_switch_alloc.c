
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt_switch {int * xps_iter_ops; int xps_xprt_list; int * xps_net; int xps_queuelen; scalar_t__ xps_nactive; scalar_t__ xps_nxprts; int xps_kref; int xps_lock; } ;
struct rpc_xprt {int dummy; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 int atomic_long_set (int *,int ) ;
 struct rpc_xprt_switch* kmalloc (int,int ) ;
 int kref_init (int *) ;
 int rpc_xprt_iter_singular ;
 int spin_lock_init (int *) ;
 int xprt_switch_add_xprt_locked (struct rpc_xprt_switch*,struct rpc_xprt*) ;

struct rpc_xprt_switch *xprt_switch_alloc(struct rpc_xprt *xprt,
  gfp_t gfp_flags)
{
 struct rpc_xprt_switch *xps;

 xps = kmalloc(sizeof(*xps), gfp_flags);
 if (xps != ((void*)0)) {
  spin_lock_init(&xps->xps_lock);
  kref_init(&xps->xps_kref);
  xps->xps_nxprts = xps->xps_nactive = 0;
  atomic_long_set(&xps->xps_queuelen, 0);
  xps->xps_net = ((void*)0);
  INIT_LIST_HEAD(&xps->xps_xprt_list);
  xps->xps_iter_ops = &rpc_xprt_iter_singular;
  xprt_switch_add_xprt_locked(xps, xprt);
 }

 return xps;
}
