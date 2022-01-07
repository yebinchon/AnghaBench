
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {int check; } ;
struct tcphdr {int check; } ;
struct sk_buff {int ip_summed; } ;
struct ipv6hdr {int nexthdr; } ;
struct ila_params {int dummy; } ;
struct icmp6hdr {int icmp6_cksum; } ;
typedef int __wsum ;


 int CHECKSUM_PARTIAL ;
 int CSUM_MANGLED_0 ;



 int get_csum_diff (struct ipv6hdr*,struct ila_params*) ;
 int inet_proto_csum_replace_by_diff (int *,struct sk_buff*,int ,int) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int likely (int ) ;
 int pskb_may_pull (struct sk_buff*,size_t) ;
 int skb_network_header (struct sk_buff*) ;

__attribute__((used)) static void ila_csum_adjust_transport(struct sk_buff *skb,
          struct ila_params *p)
{
 size_t nhoff = sizeof(struct ipv6hdr);
 struct ipv6hdr *ip6h = ipv6_hdr(skb);
 __wsum diff;

 switch (ip6h->nexthdr) {
 case 129:
  if (likely(pskb_may_pull(skb, nhoff + sizeof(struct tcphdr)))) {
   struct tcphdr *th = (struct tcphdr *)
     (skb_network_header(skb) + nhoff);

   diff = get_csum_diff(ip6h, p);
   inet_proto_csum_replace_by_diff(&th->check, skb,
       diff, 1);
  }
  break;
 case 128:
  if (likely(pskb_may_pull(skb, nhoff + sizeof(struct udphdr)))) {
   struct udphdr *uh = (struct udphdr *)
     (skb_network_header(skb) + nhoff);

   if (uh->check || skb->ip_summed == CHECKSUM_PARTIAL) {
    diff = get_csum_diff(ip6h, p);
    inet_proto_csum_replace_by_diff(&uh->check, skb,
        diff, 1);
    if (!uh->check)
     uh->check = CSUM_MANGLED_0;
   }
  }
  break;
 case 130:
  if (likely(pskb_may_pull(skb,
      nhoff + sizeof(struct icmp6hdr)))) {
   struct icmp6hdr *ih = (struct icmp6hdr *)
     (skb_network_header(skb) + nhoff);

   diff = get_csum_diff(ip6h, p);
   inet_proto_csum_replace_by_diff(&ih->icmp6_cksum, skb,
       diff, 1);
  }
  break;
 }
}
