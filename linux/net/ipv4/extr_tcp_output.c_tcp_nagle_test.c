
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int dummy; } ;
struct sk_buff {unsigned int len; } ;
struct TYPE_2__ {int tcp_flags; } ;


 int TCPHDR_FIN ;
 int TCP_NAGLE_PUSH ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff const*) ;
 int tcp_nagle_check (int,struct tcp_sock const*,int) ;
 scalar_t__ tcp_urg_mode (struct tcp_sock const*) ;

__attribute__((used)) static inline bool tcp_nagle_test(const struct tcp_sock *tp, const struct sk_buff *skb,
      unsigned int cur_mss, int nonagle)
{






 if (nonagle & TCP_NAGLE_PUSH)
  return 1;


 if (tcp_urg_mode(tp) || (TCP_SKB_CB(skb)->tcp_flags & TCPHDR_FIN))
  return 1;

 if (!tcp_nagle_check(skb->len < cur_mss, tp, nonagle))
  return 1;

 return 0;
}
