
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net_bridge {int lock; } ;
struct net {int dummy; } ;


 size_t IFLA_ADDRESS ;
 int br_changelink (struct net_device*,struct nlattr**,struct nlattr**,struct netlink_ext_ack*) ;
 int br_dev_delete (struct net_device*,int *) ;
 int br_stp_change_bridge_id (struct net_bridge*,int ) ;
 struct net_bridge* netdev_priv (struct net_device*) ;
 int nla_data (struct nlattr*) ;
 int register_netdevice (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int br_dev_newlink(struct net *src_net, struct net_device *dev,
     struct nlattr *tb[], struct nlattr *data[],
     struct netlink_ext_ack *extack)
{
 struct net_bridge *br = netdev_priv(dev);
 int err;

 err = register_netdevice(dev);
 if (err)
  return err;

 if (tb[IFLA_ADDRESS]) {
  spin_lock_bh(&br->lock);
  br_stp_change_bridge_id(br, nla_data(tb[IFLA_ADDRESS]));
  spin_unlock_bh(&br->lock);
 }

 err = br_changelink(dev, tb, data, extack);
 if (err)
  br_dev_delete(dev, ((void*)0));

 return err;
}
