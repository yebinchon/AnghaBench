
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcp_sock {int snd_cwnd; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int tcp_flags; } ;


 int TCPHDR_FIN ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff const*) ;
 int max (int,unsigned int) ;
 unsigned int min (int,int) ;
 int tcp_packets_in_flight (struct tcp_sock const*) ;
 int tcp_skb_pcount (struct sk_buff const*) ;

__attribute__((used)) static inline unsigned int tcp_cwnd_test(const struct tcp_sock *tp,
      const struct sk_buff *skb)
{
 u32 in_flight, cwnd, halfcwnd;


 if ((TCP_SKB_CB(skb)->tcp_flags & TCPHDR_FIN) &&
     tcp_skb_pcount(skb) == 1)
  return 1;

 in_flight = tcp_packets_in_flight(tp);
 cwnd = tp->snd_cwnd;
 if (in_flight >= cwnd)
  return 0;




 halfcwnd = max(cwnd >> 1, 1U);
 return min(halfcwnd, cwnd - in_flight);
}
