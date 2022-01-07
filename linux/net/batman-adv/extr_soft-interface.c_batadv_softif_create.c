
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * rtnl_link_ops; } ;
struct net {int dummy; } ;
struct batadv_priv {int dummy; } ;


 int NET_NAME_UNKNOWN ;
 struct net_device* alloc_netdev (int,char const*,int ,int ) ;
 int batadv_link_ops ;
 int batadv_softif_init_early ;
 int dev_net_set (struct net_device*,struct net*) ;
 int free_netdev (struct net_device*) ;
 int pr_err (char*,char const*,int) ;
 int register_netdevice (struct net_device*) ;

struct net_device *batadv_softif_create(struct net *net, const char *name)
{
 struct net_device *soft_iface;
 int ret;

 soft_iface = alloc_netdev(sizeof(struct batadv_priv), name,
      NET_NAME_UNKNOWN, batadv_softif_init_early);
 if (!soft_iface)
  return ((void*)0);

 dev_net_set(soft_iface, net);

 soft_iface->rtnl_link_ops = &batadv_link_ops;

 ret = register_netdevice(soft_iface);
 if (ret < 0) {
  pr_err("Unable to register the batman interface '%s': %i\n",
         name, ret);
  free_netdev(soft_iface);
  return ((void*)0);
 }

 return soft_iface;
}
