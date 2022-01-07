
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; int state; } ;


 int HZ ;
 int NETDEV_UNREGISTER ;
 int __LINK_STATE_LINKWATCH_PENDING ;
 int __rtnl_unlock () ;
 int call_netdevice_notifiers (int ,struct net_device*) ;
 unsigned long jiffies ;
 int linkwatch_forget_dev (struct net_device*) ;
 int linkwatch_run_queue () ;
 int msleep (int) ;
 int netdev_refcnt_read (struct net_device*) ;
 int pr_emerg (char*,int ,int) ;
 int rcu_barrier () ;
 int rtnl_lock () ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static void netdev_wait_allrefs(struct net_device *dev)
{
 unsigned long rebroadcast_time, warning_time;
 int refcnt;

 linkwatch_forget_dev(dev);

 rebroadcast_time = warning_time = jiffies;
 refcnt = netdev_refcnt_read(dev);

 while (refcnt != 0) {
  if (time_after(jiffies, rebroadcast_time + 1 * HZ)) {
   rtnl_lock();


   call_netdevice_notifiers(NETDEV_UNREGISTER, dev);

   __rtnl_unlock();
   rcu_barrier();
   rtnl_lock();

   if (test_bit(__LINK_STATE_LINKWATCH_PENDING,
         &dev->state)) {






    linkwatch_run_queue();
   }

   __rtnl_unlock();

   rebroadcast_time = jiffies;
  }

  msleep(250);

  refcnt = netdev_refcnt_read(dev);

  if (refcnt && time_after(jiffies, warning_time + 10 * HZ)) {
   pr_emerg("unregister_netdevice: waiting for %s to become free. Usage count = %d\n",
     dev->name, refcnt);
   warning_time = jiffies;
  }
 }
}
