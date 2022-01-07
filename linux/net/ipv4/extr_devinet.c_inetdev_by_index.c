
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int ip_ptr; } ;
struct net {int dummy; } ;
struct in_device {int dummy; } ;


 struct net_device* dev_get_by_index_rcu (struct net*,int) ;
 struct in_device* rcu_dereference_rtnl (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct in_device *inetdev_by_index(struct net *net, int ifindex)
{
 struct net_device *dev;
 struct in_device *in_dev = ((void*)0);

 rcu_read_lock();
 dev = dev_get_by_index_rcu(net, ifindex);
 if (dev)
  in_dev = rcu_dereference_rtnl(dev->ip_ptr);
 rcu_read_unlock();
 return in_dev;
}
