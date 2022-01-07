
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct neigh_table {int proxy_queue; int proxy_timer; int lock; } ;


 int del_timer_sync (int *) ;
 int neigh_flush_dev (struct neigh_table*,struct net_device*,int) ;
 int pneigh_ifdown_and_unlock (struct neigh_table*,struct net_device*) ;
 int pneigh_queue_purge (int *) ;
 int write_lock_bh (int *) ;

__attribute__((used)) static int __neigh_ifdown(struct neigh_table *tbl, struct net_device *dev,
     bool skip_perm)
{
 write_lock_bh(&tbl->lock);
 neigh_flush_dev(tbl, dev, skip_perm);
 pneigh_ifdown_and_unlock(tbl, dev);

 del_timer_sync(&tbl->proxy_timer);
 pneigh_queue_purge(&tbl->proxy_queue);
 return 0;
}
