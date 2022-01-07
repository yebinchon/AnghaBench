
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_sock {int cached_dev; } ;
struct net_device {int dummy; } ;


 int dev_hold (struct net_device*) ;
 scalar_t__ likely (struct net_device*) ;
 struct net_device* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct net_device *packet_cached_dev_get(struct packet_sock *po)
{
 struct net_device *dev;

 rcu_read_lock();
 dev = rcu_dereference(po->cached_dev);
 if (likely(dev))
  dev_hold(dev);
 rcu_read_unlock();

 return dev;
}
