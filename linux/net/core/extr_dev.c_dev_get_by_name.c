
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net {int dummy; } ;


 struct net_device* dev_get_by_name_rcu (struct net*,char const*) ;
 int dev_hold (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct net_device *dev_get_by_name(struct net *net, const char *name)
{
 struct net_device *dev;

 rcu_read_lock();
 dev = dev_get_by_name_rcu(net, name);
 if (dev)
  dev_hold(dev);
 rcu_read_unlock();
 return dev;
}
