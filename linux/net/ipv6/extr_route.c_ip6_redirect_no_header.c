
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rd_msg {int dest; } ;
struct net {int dummy; } ;
struct ipv6hdr {int saddr; int daddr; } ;
struct flowi6 {int flowi6_oif; int flowi6_uid; int saddr; int daddr; int flowi6_iif; } ;
struct dst_entry {int dummy; } ;


 int LOOPBACK_IFINDEX ;
 int dst_release (struct dst_entry*) ;
 scalar_t__ icmp6_hdr (struct sk_buff*) ;
 struct dst_entry* ip6_route_redirect (struct net*,struct flowi6*,struct sk_buff*,int *) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int rt6_do_redirect (struct dst_entry*,int *,struct sk_buff*) ;
 int sock_net_uid (struct net*,int *) ;

void ip6_redirect_no_header(struct sk_buff *skb, struct net *net, int oif)
{
 const struct ipv6hdr *iph = ipv6_hdr(skb);
 const struct rd_msg *msg = (struct rd_msg *)icmp6_hdr(skb);
 struct dst_entry *dst;
 struct flowi6 fl6 = {
  .flowi6_iif = LOOPBACK_IFINDEX,
  .flowi6_oif = oif,
  .daddr = msg->dest,
  .saddr = iph->daddr,
  .flowi6_uid = sock_net_uid(net, ((void*)0)),
 };

 dst = ip6_route_redirect(net, &fl6, skb, &iph->saddr);
 rt6_do_redirect(dst, ((void*)0), skb);
 dst_release(dst);
}
