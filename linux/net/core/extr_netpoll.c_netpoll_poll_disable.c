
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netpoll_info {int dev_lock; } ;
struct net_device {int npinfo; } ;


 int down (int *) ;
 int might_sleep () ;
 int netpoll_srcu ;
 struct netpoll_info* srcu_dereference (int ,int *) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;

void netpoll_poll_disable(struct net_device *dev)
{
 struct netpoll_info *ni;
 int idx;
 might_sleep();
 idx = srcu_read_lock(&netpoll_srcu);
 ni = srcu_dereference(dev->npinfo, &netpoll_srcu);
 if (ni)
  down(&ni->dev_lock);
 srcu_read_unlock(&netpoll_srcu, idx);
}
