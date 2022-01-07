
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcp_sock {int snd_cwnd; scalar_t__ snd_cwnd_used; int snd_cwnd_stamp; int snd_ssthresh; } ;
struct sock {int dummy; } ;
typedef int s32 ;
struct TYPE_2__ {scalar_t__ icsk_rto; } ;


 int CA_EVENT_CWND_RESTART ;
 int __sk_dst_get (struct sock*) ;
 TYPE_1__* inet_csk (struct sock*) ;
 int max (int,int) ;
 int min (int,int) ;
 int tcp_ca_event (struct sock*,int ) ;
 int tcp_current_ssthresh (struct sock*) ;
 int tcp_init_cwnd (struct tcp_sock*,int ) ;
 int tcp_jiffies32 ;
 struct tcp_sock* tcp_sk (struct sock*) ;

void tcp_cwnd_restart(struct sock *sk, s32 delta)
{
 struct tcp_sock *tp = tcp_sk(sk);
 u32 restart_cwnd = tcp_init_cwnd(tp, __sk_dst_get(sk));
 u32 cwnd = tp->snd_cwnd;

 tcp_ca_event(sk, CA_EVENT_CWND_RESTART);

 tp->snd_ssthresh = tcp_current_ssthresh(sk);
 restart_cwnd = min(restart_cwnd, cwnd);

 while ((delta -= inet_csk(sk)->icsk_rto) > 0 && cwnd > restart_cwnd)
  cwnd >>= 1;
 tp->snd_cwnd = max(cwnd, restart_cwnd);
 tp->snd_cwnd_stamp = tcp_jiffies32;
 tp->snd_cwnd_used = 0;
}
