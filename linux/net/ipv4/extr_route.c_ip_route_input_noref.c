
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct fib_result {int dummy; } ;
typedef int __be32 ;


 int IPTOS_RT_MASK ;
 int ip_route_input_rcu (struct sk_buff*,int ,int ,int ,struct net_device*,struct fib_result*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int ip_route_input_noref(struct sk_buff *skb, __be32 daddr, __be32 saddr,
    u8 tos, struct net_device *dev)
{
 struct fib_result res;
 int err;

 tos &= IPTOS_RT_MASK;
 rcu_read_lock();
 err = ip_route_input_rcu(skb, daddr, saddr, tos, dev, &res);
 rcu_read_unlock();

 return err;
}
