
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {unsigned long bridge_ageing_time; unsigned long ageing_time; int gc_work; int lock; int dev; } ;
typedef int clock_t ;


 int __set_ageing_time (int ,unsigned long) ;
 unsigned long clock_t_to_jiffies (int ) ;
 int mod_delayed_work (int ,int *,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int system_long_wq ;

int br_set_ageing_time(struct net_bridge *br, clock_t ageing_time)
{
 unsigned long t = clock_t_to_jiffies(ageing_time);
 int err;

 err = __set_ageing_time(br->dev, t);
 if (err)
  return err;

 spin_lock_bh(&br->lock);
 br->bridge_ageing_time = t;
 br->ageing_time = t;
 spin_unlock_bh(&br->lock);

 mod_delayed_work(system_long_wq, &br->gc_work, 0);

 return 0;
}
