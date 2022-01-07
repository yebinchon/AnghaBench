
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netlink_callback {int dummy; } ;
struct net_device {scalar_t__ type; int mc; int uc; } ;


 scalar_t__ ARPHRD_ETHER ;
 int EINVAL ;
 int netif_addr_lock_bh (struct net_device*) ;
 int netif_addr_unlock_bh (struct net_device*) ;
 int nlmsg_populate_fdb (struct sk_buff*,struct netlink_callback*,struct net_device*,int*,int *) ;

int ndo_dflt_fdb_dump(struct sk_buff *skb,
        struct netlink_callback *cb,
        struct net_device *dev,
        struct net_device *filter_dev,
        int *idx)
{
 int err;

 if (dev->type != ARPHRD_ETHER)
  return -EINVAL;

 netif_addr_lock_bh(dev);
 err = nlmsg_populate_fdb(skb, cb, dev, idx, &dev->uc);
 if (err)
  goto out;
 err = nlmsg_populate_fdb(skb, cb, dev, idx, &dev->mc);
out:
 netif_addr_unlock_bh(dev);
 return err;
}
