
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_bridge_port {int backup_port; int dev; } ;


 int __br_forward (struct net_bridge_port const*,struct sk_buff*,int) ;
 int deliver_clone (struct net_bridge_port const*,struct sk_buff*,int) ;
 int kfree_skb (struct sk_buff*) ;
 int netif_carrier_ok (int ) ;
 scalar_t__ rcu_access_pointer (int ) ;
 struct net_bridge_port* rcu_dereference (int ) ;
 scalar_t__ should_deliver (struct net_bridge_port const*,struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

void br_forward(const struct net_bridge_port *to,
  struct sk_buff *skb, bool local_rcv, bool local_orig)
{
 if (unlikely(!to))
  goto out;


 if (rcu_access_pointer(to->backup_port) && !netif_carrier_ok(to->dev)) {
  struct net_bridge_port *backup_port;

  backup_port = rcu_dereference(to->backup_port);
  if (unlikely(!backup_port))
   goto out;
  to = backup_port;
 }

 if (should_deliver(to, skb)) {
  if (local_rcv)
   deliver_clone(to, skb, local_orig);
  else
   __br_forward(to, skb, local_orig);
  return;
 }

out:
 if (!local_rcv)
  kfree_skb(skb);
}
