
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_drops; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ truesize; } ;


 int IS_UDPLITE (struct sock*) ;
 int UDP_MIB_CSUMERRORS ;
 int UDP_MIB_INERRORS ;
 int __UDP_INC_STATS (int ,int ,int ) ;
 int __skb_unlink (struct sk_buff*,struct sk_buff_head*) ;
 int atomic_inc (int *) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_peek (struct sk_buff_head*) ;
 int sock_net (struct sock*) ;
 scalar_t__ udp_lib_checksum_complete (struct sk_buff*) ;
 int udp_skb_csum_unnecessary_set (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *__first_packet_length(struct sock *sk,
          struct sk_buff_head *rcvq,
          int *total)
{
 struct sk_buff *skb;

 while ((skb = skb_peek(rcvq)) != ((void*)0)) {
  if (udp_lib_checksum_complete(skb)) {
   __UDP_INC_STATS(sock_net(sk), UDP_MIB_CSUMERRORS,
     IS_UDPLITE(sk));
   __UDP_INC_STATS(sock_net(sk), UDP_MIB_INERRORS,
     IS_UDPLITE(sk));
   atomic_inc(&sk->sk_drops);
   __skb_unlink(skb, rcvq);
   *total += skb->truesize;
   kfree_skb(skb);
  } else {
   udp_skb_csum_unnecessary_set(skb);
   break;
  }
 }
 return skb;
}
