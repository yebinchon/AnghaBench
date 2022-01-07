
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_xprt {int xpt_net; int xpt_lock; struct ip_map* xpt_auth_cache; int xpt_flags; } ;
struct sunrpc_net {int ip_map_cache; } ;
struct ip_map {int h; } ;


 int XPT_CACHE_AUTH ;
 int cache_put (int *,int ) ;
 struct sunrpc_net* net_generic (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sunrpc_net_id ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline void
ip_map_cached_put(struct svc_xprt *xprt, struct ip_map *ipm)
{
 if (test_bit(XPT_CACHE_AUTH, &xprt->xpt_flags)) {
  spin_lock(&xprt->xpt_lock);
  if (xprt->xpt_auth_cache == ((void*)0)) {

   xprt->xpt_auth_cache = ipm;
   ipm = ((void*)0);
  }
  spin_unlock(&xprt->xpt_lock);
 }
 if (ipm) {
  struct sunrpc_net *sn;

  sn = net_generic(xprt->xpt_net, sunrpc_net_id);
  cache_put(&ipm->h, sn->ip_map_cache);
 }
}
