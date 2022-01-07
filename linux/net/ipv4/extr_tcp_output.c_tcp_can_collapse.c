
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int sacked; } ;


 int TCPCB_SACKED_ACKED ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff const*) ;
 scalar_t__ skb_cloned (struct sk_buff const*) ;
 int tcp_skb_pcount (struct sk_buff const*) ;

__attribute__((used)) static bool tcp_can_collapse(const struct sock *sk, const struct sk_buff *skb)
{
 if (tcp_skb_pcount(skb) > 1)
  return 0;
 if (skb_cloned(skb))
  return 0;

 if (TCP_SKB_CB(skb)->sacked & TCPCB_SACKED_ACKED)
  return 0;

 return 1;
}
