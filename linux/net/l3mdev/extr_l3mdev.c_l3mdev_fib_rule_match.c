
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {TYPE_1__* l3mdev_ops; } ;
struct net {int dummy; } ;
struct flowi {int flowi_iif; int flowi_oif; } ;
struct fib_lookup_arg {int table; } ;
struct TYPE_2__ {int (* l3mdev_fib_table ) (struct net_device*) ;} ;


 struct net_device* dev_get_by_index_rcu (struct net*,int ) ;
 scalar_t__ netif_is_l3_master (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct net_device*) ;
 int stub2 (struct net_device*) ;

int l3mdev_fib_rule_match(struct net *net, struct flowi *fl,
     struct fib_lookup_arg *arg)
{
 struct net_device *dev;
 int rc = 0;

 rcu_read_lock();

 dev = dev_get_by_index_rcu(net, fl->flowi_oif);
 if (dev && netif_is_l3_master(dev) &&
     dev->l3mdev_ops->l3mdev_fib_table) {
  arg->table = dev->l3mdev_ops->l3mdev_fib_table(dev);
  rc = 1;
  goto out;
 }

 dev = dev_get_by_index_rcu(net, fl->flowi_iif);
 if (dev && netif_is_l3_master(dev) &&
     dev->l3mdev_ops->l3mdev_fib_table) {
  arg->table = dev->l3mdev_ops->l3mdev_fib_table(dev);
  rc = 1;
  goto out;
 }

out:
 rcu_read_unlock();

 return rc;
}
