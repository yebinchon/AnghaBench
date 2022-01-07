
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int snd_sml; } ;
struct sk_buff {unsigned int len; } ;
struct TYPE_2__ {int end_seq; } ;


 TYPE_1__* TCP_SKB_CB (struct sk_buff const*) ;
 unsigned int tcp_skb_pcount (struct sk_buff const*) ;

__attribute__((used)) static void tcp_minshall_update(struct tcp_sock *tp, unsigned int mss_now,
    const struct sk_buff *skb)
{
 if (skb->len < tcp_skb_pcount(skb) * mss_now)
  tp->snd_sml = TCP_SKB_CB(skb)->end_seq;
}
