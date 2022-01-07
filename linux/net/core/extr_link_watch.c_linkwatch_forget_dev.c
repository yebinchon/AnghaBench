
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int link_watch_list; } ;


 int linkwatch_do_dev (struct net_device*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int lweventlist_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void linkwatch_forget_dev(struct net_device *dev)
{
 unsigned long flags;
 int clean = 0;

 spin_lock_irqsave(&lweventlist_lock, flags);
 if (!list_empty(&dev->link_watch_list)) {
  list_del_init(&dev->link_watch_list);
  clean = 1;
 }
 spin_unlock_irqrestore(&lweventlist_lock, flags);
 if (clean)
  linkwatch_do_dev(dev);
}
