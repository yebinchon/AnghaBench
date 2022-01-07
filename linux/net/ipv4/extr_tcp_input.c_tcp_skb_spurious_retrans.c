
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int sacked; } ;


 int TCPCB_RETRANS ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff const*) ;
 int tcp_skb_timestamp (struct sk_buff const*) ;
 scalar_t__ tcp_tsopt_ecr_before (struct tcp_sock const*,int ) ;

__attribute__((used)) static bool tcp_skb_spurious_retrans(const struct tcp_sock *tp,
         const struct sk_buff *skb)
{
 return (TCP_SKB_CB(skb)->sacked & TCPCB_RETRANS) &&
        tcp_tsopt_ecr_before(tp, tcp_skb_timestamp(skb));
}
