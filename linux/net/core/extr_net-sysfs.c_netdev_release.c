
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ reg_state; int ifalias; } ;
struct device {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ NETREG_RELEASED ;
 int kfree (int ) ;
 int netdev_freemem (struct net_device*) ;
 int rcu_access_pointer (int ) ;
 struct net_device* to_net_dev (struct device*) ;

__attribute__((used)) static void netdev_release(struct device *d)
{
 struct net_device *dev = to_net_dev(d);

 BUG_ON(dev->reg_state != NETREG_RELEASED);




 kfree(rcu_access_pointer(dev->ifalias));
 netdev_freemem(dev);
}
