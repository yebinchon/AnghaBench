
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udphdr {int len; void* source; void* dest; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct rtable {int dummy; } ;
typedef int __u8 ;
typedef int __be32 ;
typedef void* __be16 ;
struct TYPE_2__ {int opt; } ;


 TYPE_1__* IPCB (struct sk_buff*) ;
 int IPPROTO_UDP ;
 int __skb_push (struct sk_buff*,int) ;
 int htons (int ) ;
 int iptunnel_xmit (struct sock*,struct rtable*,struct sk_buff*,int ,int ,int ,int ,int ,void*,int) ;
 int memset (int *,int ,int) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 struct udphdr* udp_hdr (struct sk_buff*) ;
 int udp_set_csum (int,struct sk_buff*,int ,int ,int ) ;

void udp_tunnel_xmit_skb(struct rtable *rt, struct sock *sk, struct sk_buff *skb,
    __be32 src, __be32 dst, __u8 tos, __u8 ttl,
    __be16 df, __be16 src_port, __be16 dst_port,
    bool xnet, bool nocheck)
{
 struct udphdr *uh;

 __skb_push(skb, sizeof(*uh));
 skb_reset_transport_header(skb);
 uh = udp_hdr(skb);

 uh->dest = dst_port;
 uh->source = src_port;
 uh->len = htons(skb->len);

 memset(&(IPCB(skb)->opt), 0, sizeof(IPCB(skb)->opt));

 udp_set_csum(nocheck, skb, src, dst, skb->len);

 iptunnel_xmit(sk, rt, skb, src, dst, IPPROTO_UDP, tos, ttl, df, xnet);
}
