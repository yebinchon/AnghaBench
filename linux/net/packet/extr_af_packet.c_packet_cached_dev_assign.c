
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_sock {int cached_dev; } ;
struct net_device {int dummy; } ;


 int rcu_assign_pointer (int ,struct net_device*) ;

__attribute__((used)) static void packet_cached_dev_assign(struct packet_sock *po,
         struct net_device *dev)
{
 rcu_assign_pointer(po->cached_dev, dev);
}
