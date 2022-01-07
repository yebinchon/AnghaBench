
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct rtnl_link_ops {int dummy; } ;
struct net {int dummy; } ;
struct ip_tunnel_parm {int name; } ;
struct ip_tunnel_net {TYPE_1__* fb_tunnel_dev; int type; int * tunnels; struct rtnl_link_ops* rtnl_link_ops; } ;
typedef int parms ;
struct TYPE_6__ {int type; int mtu; int features; } ;


 int IFNAMSIZ ;
 int INIT_HLIST_HEAD (int *) ;
 unsigned int IP_TNL_HASH_SIZE ;
 int IS_ERR (TYPE_1__*) ;
 int NETIF_F_NETNS_LOCAL ;
 int PTR_ERR_OR_ZERO (TYPE_1__*) ;
 TYPE_1__* __ip_tunnel_create (struct net*,struct rtnl_link_ops*,struct ip_tunnel_parm*) ;
 struct net init_net ;
 int ip_tunnel_add (struct ip_tunnel_net*,int ) ;
 int ip_tunnel_bind_dev (TYPE_1__*) ;
 int memset (struct ip_tunnel_parm*,int ,int) ;
 struct ip_tunnel_net* net_generic (struct net*,unsigned int) ;
 int net_has_fallback_tunnels (struct net*) ;
 int netdev_priv (TYPE_1__*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int strlcpy (int ,char*,int ) ;

int ip_tunnel_init_net(struct net *net, unsigned int ip_tnl_net_id,
      struct rtnl_link_ops *ops, char *devname)
{
 struct ip_tunnel_net *itn = net_generic(net, ip_tnl_net_id);
 struct ip_tunnel_parm parms;
 unsigned int i;

 itn->rtnl_link_ops = ops;
 for (i = 0; i < IP_TNL_HASH_SIZE; i++)
  INIT_HLIST_HEAD(&itn->tunnels[i]);

 if (!ops || !net_has_fallback_tunnels(net)) {
  struct ip_tunnel_net *it_init_net;

  it_init_net = net_generic(&init_net, ip_tnl_net_id);
  itn->type = it_init_net->type;
  itn->fb_tunnel_dev = ((void*)0);
  return 0;
 }

 memset(&parms, 0, sizeof(parms));
 if (devname)
  strlcpy(parms.name, devname, IFNAMSIZ);

 rtnl_lock();
 itn->fb_tunnel_dev = __ip_tunnel_create(net, ops, &parms);



 if (!IS_ERR(itn->fb_tunnel_dev)) {
  itn->fb_tunnel_dev->features |= NETIF_F_NETNS_LOCAL;
  itn->fb_tunnel_dev->mtu = ip_tunnel_bind_dev(itn->fb_tunnel_dev);
  ip_tunnel_add(itn, netdev_priv(itn->fb_tunnel_dev));
  itn->type = itn->fb_tunnel_dev->type;
 }
 rtnl_unlock();

 return PTR_ERR_OR_ZERO(itn->fb_tunnel_dev);
}
