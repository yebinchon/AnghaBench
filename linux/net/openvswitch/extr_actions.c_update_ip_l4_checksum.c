
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udphdr {scalar_t__ check; } ;
struct tcphdr {int dummy; } ;
struct sk_buff {int len; scalar_t__ ip_summed; } ;
struct iphdr {int frag_off; scalar_t__ protocol; } ;
typedef int __be32 ;
struct TYPE_2__ {scalar_t__ check; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 scalar_t__ CSUM_MANGLED_0 ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 int IP_OFFSET ;
 int htons (int ) ;
 int inet_proto_csum_replace4 (scalar_t__*,struct sk_buff*,int ,int ,int) ;
 scalar_t__ likely (int) ;
 int skb_transport_offset (struct sk_buff*) ;
 TYPE_1__* tcp_hdr (struct sk_buff*) ;
 struct udphdr* udp_hdr (struct sk_buff*) ;

__attribute__((used)) static void update_ip_l4_checksum(struct sk_buff *skb, struct iphdr *nh,
      __be32 addr, __be32 new_addr)
{
 int transport_len = skb->len - skb_transport_offset(skb);

 if (nh->frag_off & htons(IP_OFFSET))
  return;

 if (nh->protocol == IPPROTO_TCP) {
  if (likely(transport_len >= sizeof(struct tcphdr)))
   inet_proto_csum_replace4(&tcp_hdr(skb)->check, skb,
       addr, new_addr, 1);
 } else if (nh->protocol == IPPROTO_UDP) {
  if (likely(transport_len >= sizeof(struct udphdr))) {
   struct udphdr *uh = udp_hdr(skb);

   if (uh->check || skb->ip_summed == CHECKSUM_PARTIAL) {
    inet_proto_csum_replace4(&uh->check, skb,
        addr, new_addr, 1);
    if (!uh->check)
     uh->check = CSUM_MANGLED_0;
   }
  }
 }
}
