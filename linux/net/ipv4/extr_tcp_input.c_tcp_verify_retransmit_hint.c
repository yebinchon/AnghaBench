
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {struct sk_buff* retransmit_skb_hint; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int seq; } ;


 TYPE_1__* TCP_SKB_CB (struct sk_buff*) ;
 scalar_t__ before (int ,int ) ;

__attribute__((used)) static void tcp_verify_retransmit_hint(struct tcp_sock *tp, struct sk_buff *skb)
{
 if (!tp->retransmit_skb_hint ||
     before(TCP_SKB_CB(skb)->seq,
     TCP_SKB_CB(tp->retransmit_skb_hint)->seq))
  tp->retransmit_skb_hint = skb;
}
