
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int retrans_out; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int sacked; } ;


 int LINUX_MIB_TCPLOSTRETRANSMIT ;
 int NET_ADD_STATS (int ,int ,scalar_t__) ;
 int TCPCB_SACKED_RETRANS ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff*) ;
 int sock_net (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_skb_mark_lost_uncond_verify (struct tcp_sock*,struct sk_buff*) ;
 scalar_t__ tcp_skb_pcount (struct sk_buff*) ;

void tcp_mark_skb_lost(struct sock *sk, struct sk_buff *skb)
{
 struct tcp_sock *tp = tcp_sk(sk);

 tcp_skb_mark_lost_uncond_verify(tp, skb);
 if (TCP_SKB_CB(skb)->sacked & TCPCB_SACKED_RETRANS) {

  TCP_SKB_CB(skb)->sacked &= ~TCPCB_SACKED_RETRANS;
  tp->retrans_out -= tcp_skb_pcount(skb);
  NET_ADD_STATS(sock_net(sk), LINUX_MIB_TCPLOSTRETRANSMIT,
         tcp_skb_pcount(skb));
 }
}
