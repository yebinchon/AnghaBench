
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_ops {int setup; int priv_size; int kind; } ;
struct net_device {struct rtnl_link_ops const* rtnl_link_ops; } ;
struct net {int dummy; } ;
struct ip_tunnel_parm {scalar_t__* name; } ;
struct ip_tunnel {struct net* net; struct ip_tunnel_parm parms; } ;


 int ASSERT_RTNL () ;
 int E2BIG ;
 int ENOMEM ;
 struct net_device* ERR_PTR (int) ;
 int IFNAMSIZ ;
 int NET_NAME_UNKNOWN ;
 struct net_device* alloc_netdev (int ,char*,int ,int ) ;
 int dev_net_set (struct net_device*,struct net*) ;
 int dev_valid_name (scalar_t__*) ;
 int free_netdev (struct net_device*) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;
 int register_netdevice (struct net_device*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,int ) ;
 int strlcpy (char*,scalar_t__*,int) ;
 int strlen (int ) ;

__attribute__((used)) static struct net_device *__ip_tunnel_create(struct net *net,
          const struct rtnl_link_ops *ops,
          struct ip_tunnel_parm *parms)
{
 int err;
 struct ip_tunnel *tunnel;
 struct net_device *dev;
 char name[IFNAMSIZ];

 err = -E2BIG;
 if (parms->name[0]) {
  if (!dev_valid_name(parms->name))
   goto failed;
  strlcpy(name, parms->name, IFNAMSIZ);
 } else {
  if (strlen(ops->kind) > (IFNAMSIZ - 3))
   goto failed;
  strcpy(name, ops->kind);
  strcat(name, "%d");
 }

 ASSERT_RTNL();
 dev = alloc_netdev(ops->priv_size, name, NET_NAME_UNKNOWN, ops->setup);
 if (!dev) {
  err = -ENOMEM;
  goto failed;
 }
 dev_net_set(dev, net);

 dev->rtnl_link_ops = ops;

 tunnel = netdev_priv(dev);
 tunnel->parms = *parms;
 tunnel->net = net;

 err = register_netdevice(dev);
 if (err)
  goto failed_free;

 return dev;

failed_free:
 free_netdev(dev);
failed:
 return ERR_PTR(err);
}
