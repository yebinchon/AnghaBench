
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int link_watch_list; } ;


 int dev_hold (struct net_device*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int lweventlist ;
 int lweventlist_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void linkwatch_add_event(struct net_device *dev)
{
 unsigned long flags;

 spin_lock_irqsave(&lweventlist_lock, flags);
 if (list_empty(&dev->link_watch_list)) {
  list_add_tail(&dev->link_watch_list, &lweventlist);
  dev_hold(dev);
 }
 spin_unlock_irqrestore(&lweventlist_lock, flags);
}
