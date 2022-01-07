
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
typedef int __be32 ;


 int RT_TABLE_LOCAL ;
 unsigned int __inet_dev_addr_type (struct net*,int *,int ,int ) ;
 scalar_t__ l3mdev_fib_table (struct net_device const*) ;

unsigned int inet_addr_type_dev_table(struct net *net,
          const struct net_device *dev,
          __be32 addr)
{
 u32 rt_table = l3mdev_fib_table(dev) ? : RT_TABLE_LOCAL;

 return __inet_dev_addr_type(net, ((void*)0), addr, rt_table);
}
