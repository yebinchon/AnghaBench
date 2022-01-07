
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunrpc_net {int use_gss_proxy; } ;
struct net {int dummy; } ;


 int EBUSY ;
 int WARN_ON_ONCE (int) ;
 int cmpxchg (int *,int,int) ;
 struct sunrpc_net* net_generic (struct net*,int ) ;
 int sunrpc_net_id ;

__attribute__((used)) static int set_gss_proxy(struct net *net, int type)
{
 struct sunrpc_net *sn = net_generic(net, sunrpc_net_id);
 int ret;

 WARN_ON_ONCE(type != 0 && type != 1);
 ret = cmpxchg(&sn->use_gss_proxy, -1, type);
 if (ret != -1 && ret != type)
  return -EBUSY;
 return 0;
}
