
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net {int dummy; } ;


 struct net_device* dev_get_by_index_rcu (struct net*,int) ;
 int dev_hold (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct net_device *dev_get_by_index(struct net *net, int ifindex)
{
 struct net_device *dev;

 rcu_read_lock();
 dev = dev_get_by_index_rcu(net, ifindex);
 if (dev)
  dev_hold(dev);
 rcu_read_unlock();
 return dev;
}
