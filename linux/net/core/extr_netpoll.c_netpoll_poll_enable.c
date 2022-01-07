
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netpoll_info {int dev_lock; } ;
struct net_device {int npinfo; } ;


 struct netpoll_info* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int up (int *) ;

void netpoll_poll_enable(struct net_device *dev)
{
 struct netpoll_info *ni;
 rcu_read_lock();
 ni = rcu_dereference(dev->npinfo);
 if (ni)
  up(&ni->dev_lock);
 rcu_read_unlock();
}
