
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udphdr {scalar_t__ check; int len; int dest; int source; } ;
struct sock {int sk_protocol; scalar_t__ sk_no_check_tx; } ;
struct sk_buff {int len; scalar_t__ ip_summed; struct sock* sk; } ;
struct inet_sock {int recverr; int inet_sport; } ;
struct inet_cork {int gso_size; scalar_t__ fragsize; } ;
struct flowi4 {int daddr; int saddr; int fl4_dport; } ;
typedef int __wsum ;
struct TYPE_2__ {int gso_size; int gso_segs; int gso_type; } ;


 scalar_t__ CHECKSUM_NONE ;
 scalar_t__ CHECKSUM_PARTIAL ;
 scalar_t__ CSUM_MANGLED_0 ;
 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 int EIO ;
 int ENOBUFS ;
 int IS_UDPLITE (struct sock*) ;
 int SKB_GSO_UDP_L4 ;
 int UDP_INC_STATS (int ,int ,int) ;
 int UDP_MAX_SEGMENTS ;
 int UDP_MIB_OUTDATAGRAMS ;
 int UDP_MIB_SNDBUFERRORS ;
 scalar_t__ csum_tcpudp_magic (int ,int ,int,int ,int ) ;
 scalar_t__ dst_xfrm (int ) ;
 int htons (int) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int ip_send_skb (int ,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_dst (struct sk_buff*) ;
 int skb_network_header_len (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int skb_transport_offset (struct sk_buff*) ;
 int sock_net (struct sock*) ;
 int udp4_hwcsum (struct sk_buff*,int ,int ) ;
 int udp_csum (struct sk_buff*) ;
 struct udphdr* udp_hdr (struct sk_buff*) ;
 int udplite_csum (struct sk_buff*) ;

__attribute__((used)) static int udp_send_skb(struct sk_buff *skb, struct flowi4 *fl4,
   struct inet_cork *cork)
{
 struct sock *sk = skb->sk;
 struct inet_sock *inet = inet_sk(sk);
 struct udphdr *uh;
 int err = 0;
 int is_udplite = IS_UDPLITE(sk);
 int offset = skb_transport_offset(skb);
 int len = skb->len - offset;
 int datalen = len - sizeof(*uh);
 __wsum csum = 0;




 uh = udp_hdr(skb);
 uh->source = inet->inet_sport;
 uh->dest = fl4->fl4_dport;
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
  if (sk->sk_no_check_tx) {
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

 else if (sk->sk_no_check_tx) {

  skb->ip_summed = CHECKSUM_NONE;
  goto send;

 } else if (skb->ip_summed == CHECKSUM_PARTIAL) {
csum_partial:

  udp4_hwcsum(skb, fl4->saddr, fl4->daddr);
  goto send;

 } else
  csum = udp_csum(skb);


 uh->check = csum_tcpudp_magic(fl4->saddr, fl4->daddr, len,
          sk->sk_protocol, csum);
 if (uh->check == 0)
  uh->check = CSUM_MANGLED_0;

send:
 err = ip_send_skb(sock_net(sk), skb);
 if (err) {
  if (err == -ENOBUFS && !inet->recverr) {
   UDP_INC_STATS(sock_net(sk),
          UDP_MIB_SNDBUFERRORS, is_udplite);
   err = 0;
  }
 } else
  UDP_INC_STATS(sock_net(sk),
         UDP_MIB_OUTDATAGRAMS, is_udplite);
 return err;
}
