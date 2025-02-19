
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcphdr {int doff; int dest; int source; } ;
struct sock {int sk_rx_dst; } ;
struct sk_buff {scalar_t__ pkt_type; scalar_t__ skb_iif; int destructor; struct sock* sk; int dev; } ;
struct iphdr {int daddr; int saddr; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {scalar_t__ rx_dst_ifindex; } ;


 scalar_t__ PACKET_HOST ;
 struct dst_entry* READ_ONCE (int ) ;
 struct sock* __inet_lookup_established (int ,int *,int ,int ,int ,int ,scalar_t__,int ) ;
 int dev_net (int ) ;
 struct dst_entry* dst_check (struct dst_entry*,int ) ;
 int inet_sdif (struct sk_buff*) ;
 TYPE_1__* inet_sk (struct sock*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ntohs (int ) ;
 int pskb_may_pull (struct sk_buff*,scalar_t__) ;
 scalar_t__ sk_fullsock (struct sock*) ;
 int skb_dst_set_noref (struct sk_buff*,struct dst_entry*) ;
 scalar_t__ skb_transport_offset (struct sk_buff*) ;
 int sock_edemux ;
 int tcp_hashinfo ;
 struct tcphdr* tcp_hdr (struct sk_buff*) ;

int tcp_v4_early_demux(struct sk_buff *skb)
{
 const struct iphdr *iph;
 const struct tcphdr *th;
 struct sock *sk;

 if (skb->pkt_type != PACKET_HOST)
  return 0;

 if (!pskb_may_pull(skb, skb_transport_offset(skb) + sizeof(struct tcphdr)))
  return 0;

 iph = ip_hdr(skb);
 th = tcp_hdr(skb);

 if (th->doff < sizeof(struct tcphdr) / 4)
  return 0;

 sk = __inet_lookup_established(dev_net(skb->dev), &tcp_hashinfo,
           iph->saddr, th->source,
           iph->daddr, ntohs(th->dest),
           skb->skb_iif, inet_sdif(skb));
 if (sk) {
  skb->sk = sk;
  skb->destructor = sock_edemux;
  if (sk_fullsock(sk)) {
   struct dst_entry *dst = READ_ONCE(sk->sk_rx_dst);

   if (dst)
    dst = dst_check(dst, 0);
   if (dst &&
       inet_sk(sk)->rx_dst_ifindex == skb->skb_iif)
    skb_dst_set_noref(skb, dst);
  }
 }
 return 0;
}
