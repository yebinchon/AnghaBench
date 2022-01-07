
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netdev_queue {int qdisc; } ;
struct net_device {int header_ops; } ;
struct dst_entry {int dummy; } ;


 int ENODEV ;
 int __teql_resolve (struct sk_buff*,struct sk_buff*,struct net_device*,struct netdev_queue*,struct dst_entry*) ;
 int noop_qdisc ;
 int * rcu_access_pointer (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct dst_entry* skb_dst (struct sk_buff*) ;

__attribute__((used)) static inline int teql_resolve(struct sk_buff *skb,
          struct sk_buff *skb_res,
          struct net_device *dev,
          struct netdev_queue *txq)
{
 struct dst_entry *dst = skb_dst(skb);
 int res;

 if (rcu_access_pointer(txq->qdisc) == &noop_qdisc)
  return -ENODEV;

 if (!dev->header_ops || !dst)
  return 0;

 rcu_read_lock();
 res = __teql_resolve(skb, skb_res, dev, txq, dst);
 rcu_read_unlock();

 return res;
}
