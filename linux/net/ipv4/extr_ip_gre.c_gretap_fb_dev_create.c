
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int tb ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ip_tunnel {int collect_md; } ;


 struct net_device* ERR_PTR (int) ;
 int IFLA_MAX ;
 int IP_MAX_MTU ;
 scalar_t__ IS_ERR (struct net_device*) ;
 int LIST_HEAD (int ) ;
 int __ip_tunnel_change_mtu (struct net_device*,int ,int) ;
 int free_netdev (struct net_device*) ;
 int ip_tunnel_dellink (struct net_device*,int *) ;
 int ipgre_newlink (struct net*,struct net_device*,struct nlattr**,int *,int *) ;
 int ipgre_tap_ops ;
 int list_kill ;
 int memset (struct nlattr***,int ,int) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;
 int rtnl_configure_link (struct net_device*,int *) ;
 struct net_device* rtnl_create_link (struct net*,char const*,int ,int *,struct nlattr**,int *) ;
 int unregister_netdevice_many (int *) ;

struct net_device *gretap_fb_dev_create(struct net *net, const char *name,
     u8 name_assign_type)
{
 struct nlattr *tb[IFLA_MAX + 1];
 struct net_device *dev;
 LIST_HEAD(list_kill);
 struct ip_tunnel *t;
 int err;

 memset(&tb, 0, sizeof(tb));

 dev = rtnl_create_link(net, name, name_assign_type,
          &ipgre_tap_ops, tb, ((void*)0));
 if (IS_ERR(dev))
  return dev;


 t = netdev_priv(dev);
 t->collect_md = 1;

 err = ipgre_newlink(net, dev, tb, ((void*)0), ((void*)0));
 if (err < 0) {
  free_netdev(dev);
  return ERR_PTR(err);
 }




 err = __ip_tunnel_change_mtu(dev, IP_MAX_MTU, 0);
 if (err)
  goto out;

 err = rtnl_configure_link(dev, ((void*)0));
 if (err < 0)
  goto out;

 return dev;
out:
 ip_tunnel_dellink(dev, &list_kill);
 unregister_netdevice_many(&list_kill);
 return ERR_PTR(err);
}
