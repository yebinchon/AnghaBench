
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_ops {int (* dellink ) (struct net_device*,int *) ;} ;
struct net_device {struct rtnl_link_ops* rtnl_link_ops; } ;


 int EOPNOTSUPP ;
 int LIST_HEAD (int ) ;
 int list_kill ;
 int stub1 (struct net_device*,int *) ;
 int unregister_netdevice_many (int *) ;

int rtnl_delete_link(struct net_device *dev)
{
 const struct rtnl_link_ops *ops;
 LIST_HEAD(list_kill);

 ops = dev->rtnl_link_ops;
 if (!ops || !ops->dellink)
  return -EOPNOTSUPP;

 ops->dellink(dev, &list_kill);
 unregister_netdevice_many(&list_kill);

 return 0;
}
