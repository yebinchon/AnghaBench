
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct inet6_ifaddr {int addr_lst; int addr; } ;


 int EEXIST ;
 int addrconf_hash_lock ;
 int dev_net (struct net_device*) ;
 int hlist_add_head_rcu (int *,int *) ;
 unsigned int inet6_addr_hash (int ,int *) ;
 int * inet6_addr_lst ;
 scalar_t__ ipv6_chk_same_addr (int ,int *,struct net_device*,unsigned int) ;
 int netdev_dbg (struct net_device*,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ipv6_add_addr_hash(struct net_device *dev, struct inet6_ifaddr *ifa)
{
 unsigned int hash = inet6_addr_hash(dev_net(dev), &ifa->addr);
 int err = 0;

 spin_lock(&addrconf_hash_lock);


 if (ipv6_chk_same_addr(dev_net(dev), &ifa->addr, dev, hash)) {
  netdev_dbg(dev, "ipv6_add_addr: already assigned\n");
  err = -EEXIST;
 } else {
  hlist_add_head_rcu(&ifa->addr_lst, &inet6_addr_lst[hash]);
 }

 spin_unlock(&addrconf_hash_lock);

 return err;
}
