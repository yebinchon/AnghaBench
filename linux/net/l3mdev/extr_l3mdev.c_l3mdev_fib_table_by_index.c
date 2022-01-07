
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;


 struct net_device* dev_get_by_index_rcu (struct net*,int) ;
 int l3mdev_fib_table_rcu (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

u32 l3mdev_fib_table_by_index(struct net *net, int ifindex)
{
 struct net_device *dev;
 u32 tb_id = 0;

 if (!ifindex)
  return 0;

 rcu_read_lock();

 dev = dev_get_by_index_rcu(net, ifindex);
 if (dev)
  tb_id = l3mdev_fib_table_rcu(dev);

 rcu_read_unlock();

 return tb_id;
}
