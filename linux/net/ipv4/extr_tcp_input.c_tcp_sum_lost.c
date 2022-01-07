
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int lost; } ;
struct sk_buff {int dummy; } ;
typedef int __u8 ;
struct TYPE_2__ {int sacked; } ;


 int TCPCB_LOST ;
 int TCPCB_SACKED_RETRANS ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff*) ;
 scalar_t__ tcp_skb_pcount (struct sk_buff*) ;

__attribute__((used)) static void tcp_sum_lost(struct tcp_sock *tp, struct sk_buff *skb)
{
 __u8 sacked = TCP_SKB_CB(skb)->sacked;

 if (!(sacked & TCPCB_LOST) ||
     ((sacked & TCPCB_LOST) && (sacked & TCPCB_SACKED_RETRANS)))
  tp->lost += tcp_skb_pcount(skb);
}
