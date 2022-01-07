
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct net_bridge_port {int br; } ;


 int BR_MCAST_DIR_TX ;
 struct net_bridge_port* ERR_PTR (int) ;
 int br_multicast_count (int ,struct net_bridge_port*,struct sk_buff*,int ,int ) ;
 int br_multicast_igmp_type (struct sk_buff*) ;
 int deliver_clone (struct net_bridge_port*,struct sk_buff*,int) ;
 int should_deliver (struct net_bridge_port*,struct sk_buff*) ;

__attribute__((used)) static struct net_bridge_port *maybe_deliver(
 struct net_bridge_port *prev, struct net_bridge_port *p,
 struct sk_buff *skb, bool local_orig)
{
 u8 igmp_type = br_multicast_igmp_type(skb);
 int err;

 if (!should_deliver(p, skb))
  return prev;

 if (!prev)
  goto out;

 err = deliver_clone(prev, skb, local_orig);
 if (err)
  return ERR_PTR(err);
out:
 br_multicast_count(p->br, p, skb, igmp_type, BR_MCAST_DIR_TX);

 return p;
}
