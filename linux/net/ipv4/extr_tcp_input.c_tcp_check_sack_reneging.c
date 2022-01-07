
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int srtt_us; } ;
struct sock {int dummy; } ;


 int FLAG_SACK_RENEGING ;
 int ICSK_TIME_RETRANS ;
 int TCP_RTO_MAX ;
 int inet_csk_reset_xmit_timer (struct sock*,int ,unsigned long,int ) ;
 unsigned long max (int ,int ) ;
 int msecs_to_jiffies (int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int usecs_to_jiffies (int) ;

__attribute__((used)) static bool tcp_check_sack_reneging(struct sock *sk, int flag)
{
 if (flag & FLAG_SACK_RENEGING) {
  struct tcp_sock *tp = tcp_sk(sk);
  unsigned long delay = max(usecs_to_jiffies(tp->srtt_us >> 4),
       msecs_to_jiffies(10));

  inet_csk_reset_xmit_timer(sk, ICSK_TIME_RETRANS,
       delay, TCP_RTO_MAX);
  return 1;
 }
 return 0;
}
