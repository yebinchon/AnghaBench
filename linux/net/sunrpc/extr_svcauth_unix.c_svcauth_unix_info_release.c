
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_xprt {int xpt_net; struct ip_map* xpt_auth_cache; } ;
struct sunrpc_net {int ip_map_cache; } ;
struct ip_map {int h; } ;


 int cache_put (int *,int ) ;
 struct sunrpc_net* net_generic (int ,int ) ;
 int sunrpc_net_id ;

void
svcauth_unix_info_release(struct svc_xprt *xpt)
{
 struct ip_map *ipm;

 ipm = xpt->xpt_auth_cache;
 if (ipm != ((void*)0)) {
  struct sunrpc_net *sn;

  sn = net_generic(xpt->xpt_net, sunrpc_net_id);
  cache_put(&ipm->h, sn->ip_map_cache);
 }
}
