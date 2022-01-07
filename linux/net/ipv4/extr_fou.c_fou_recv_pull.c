
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct fou {scalar_t__ family; } ;
struct TYPE_4__ {void* tot_len; } ;
struct TYPE_3__ {void* payload_len; } ;


 scalar_t__ AF_INET ;
 int __skb_pull (struct sk_buff*,size_t) ;
 void* htons (scalar_t__) ;
 TYPE_2__* ip_hdr (struct sk_buff*) ;
 int iptunnel_pull_offloads (struct sk_buff*) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 scalar_t__ ntohs (void*) ;
 int skb_postpull_rcsum (struct sk_buff*,int ,size_t) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 int udp_hdr (struct sk_buff*) ;

__attribute__((used)) static int fou_recv_pull(struct sk_buff *skb, struct fou *fou, size_t len)
{



 if (fou->family == AF_INET)
  ip_hdr(skb)->tot_len = htons(ntohs(ip_hdr(skb)->tot_len) - len);
 else
  ipv6_hdr(skb)->payload_len =
      htons(ntohs(ipv6_hdr(skb)->payload_len) - len);

 __skb_pull(skb, len);
 skb_postpull_rcsum(skb, udp_hdr(skb), len);
 skb_reset_transport_header(skb);
 return iptunnel_pull_offloads(skb);
}
