
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct udphdr {scalar_t__ check; int len; int dest; int source; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; scalar_t__ ip_summed; struct sock* sk; } ;
struct inet_cork {int gso_size; scalar_t__ fragsize; } ;
struct flowi6 {int flowi6_proto; int daddr; int saddr; int fl6_dport; int fl6_sport; } ;
typedef int __wsum ;
struct TYPE_6__ {int recverr; } ;
struct TYPE_5__ {int gso_size; int gso_segs; int gso_type; } ;
struct TYPE_4__ {scalar_t__ no_check6_tx; } ;


 scalar_t__ CHECKSUM_NONE ;
 scalar_t__ CHECKSUM_PARTIAL ;
 scalar_t__ CSUM_MANGLED_0 ;
 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 int EIO ;
 int ENOBUFS ;
 int IS_UDPLITE (struct sock*) ;
 int SKB_GSO_UDP_L4 ;
 int UDP6_INC_STATS (int ,int ,int) ;
 int UDP_MAX_SEGMENTS ;
 int UDP_MIB_OUTDATAGRAMS ;
 int UDP_MIB_SNDBUFERRORS ;
 scalar_t__ csum_ipv6_magic (int *,int *,int,int ,int ) ;
 scalar_t__ dst_xfrm (int ) ;
 int htons (int) ;
 TYPE_3__* inet6_sk (struct sock*) ;
 int ip6_send_skb (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_dst (struct sk_buff*) ;
 int skb_network_header_len (struct sk_buff*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int skb_transport_offset (struct sk_buff*) ;
 int sock_net (struct sock*) ;
 int udp6_hwcsum_outgoing (struct sock*,struct sk_buff*,int *,int *,int) ;
 int udp_csum (struct sk_buff*) ;
 struct udphdr* udp_hdr (struct sk_buff*) ;
 TYPE_1__* udp_sk (struct sock*) ;
 int udplite_csum (struct sk_buff*) ;

__attribute__((used)) static int udp_v6_send_skb(struct sk_buff *skb, struct flowi6 *fl6,
      struct inet_cork *cork)
{
 struct sock *sk = skb->sk;
 struct udphdr *uh;
 int err = 0;
 int is_udplite = IS_UDPLITE(sk);
 __wsum csum = 0;
 int offset = skb_transport_offset(skb);
 int len = skb->len - offset;
 int datalen = len - sizeof(*uh);




 uh = udp_hdr(skb);
 uh->source = fl6->fl6_sport;
 uh->dest = fl6->fl6_dport;
 uh->len = htons(len);
 uh->check = 0;

 if (cork->gso_size) {
  const int hlen = skb_network_header_len(skb) +
     sizeof(struct udphdr);

  if (hlen + cork->gso_size > cork->fragsize) {
   kfree_skb(skb);
   return -EINVAL;
  }
  if (skb->len > cork->gso_size * UDP_MAX_SEGMENTS) {
   kfree_skb(skb);
   return -EINVAL;
  }
  if (udp_sk(sk)->no_check6_tx) {
   kfree_skb(skb);
   return -EINVAL;
  }
  if (skb->ip_summed != CHECKSUM_PARTIAL || is_udplite ||
      dst_xfrm(skb_dst(skb))) {
   kfree_skb(skb);
   return -EIO;
  }

  if (datalen > cork->gso_size) {
   skb_shinfo(skb)->gso_size = cork->gso_size;
   skb_shinfo(skb)->gso_type = SKB_GSO_UDP_L4;
   skb_shinfo(skb)->gso_segs = DIV_ROUND_UP(datalen,
         cork->gso_size);
  }
  goto csum_partial;
 }

 if (is_udplite)
  csum = udplite_csum(skb);
 else if (udp_sk(sk)->no_check6_tx) {
  skb->ip_summed = CHECKSUM_NONE;
  goto send;
 } else if (skb->ip_summed == CHECKSUM_PARTIAL) {
csum_partial:
  udp6_hwcsum_outgoing(sk, skb, &fl6->saddr, &fl6->daddr, len);
  goto send;
 } else
  csum = udp_csum(skb);


 uh->check = csum_ipv6_magic(&fl6->saddr, &fl6->daddr,
        len, fl6->flowi6_proto, csum);
 if (uh->check == 0)
  uh->check = CSUM_MANGLED_0;

send:
 err = ip6_send_skb(skb);
 if (err) {
  if (err == -ENOBUFS && !inet6_sk(sk)->recverr) {
   UDP6_INC_STATS(sock_net(sk),
           UDP_MIB_SNDBUFERRORS, is_udplite);
   err = 0;
  }
 } else {
  UDP6_INC_STATS(sock_net(sk),
          UDP_MIB_OUTDATAGRAMS, is_udplite);
 }
 return err;
}
