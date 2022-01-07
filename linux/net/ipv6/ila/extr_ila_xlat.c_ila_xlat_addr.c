
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {TYPE_2__* dev; } ;
struct net {int dummy; } ;
struct ipv6hdr {int daddr; } ;
struct ila_net {int dummy; } ;
struct TYPE_3__ {int ip; } ;
struct ila_map {TYPE_1__ xp; } ;
struct ila_addr {int dummy; } ;
struct TYPE_4__ {int ifindex; } ;


 struct net* dev_net (TYPE_2__*) ;
 struct ila_addr* ila_a2i (int *) ;
 struct ila_map* ila_lookup_wildcards (struct ila_addr*,int ,struct ila_net*) ;
 int ila_net_id ;
 int ila_update_ipv6_locator (struct sk_buff*,int *,int) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 struct ila_net* net_generic (struct net*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int ila_xlat_addr(struct sk_buff *skb, bool sir2ila)
{
 struct ila_map *ila;
 struct ipv6hdr *ip6h = ipv6_hdr(skb);
 struct net *net = dev_net(skb->dev);
 struct ila_net *ilan = net_generic(net, ila_net_id);
 struct ila_addr *iaddr = ila_a2i(&ip6h->daddr);
 rcu_read_lock();

 ila = ila_lookup_wildcards(iaddr, skb->dev->ifindex, ilan);
 if (ila)
  ila_update_ipv6_locator(skb, &ila->xp.ip, sir2ila);

 rcu_read_unlock();

 return 0;
}
