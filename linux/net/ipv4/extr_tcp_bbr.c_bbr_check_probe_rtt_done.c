
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int snd_cwnd; } ;
struct sock {int dummy; } ;
struct bbr {int prior_cwnd; int min_rtt_stamp; scalar_t__ probe_rtt_done_stamp; } ;


 scalar_t__ after (int ,scalar_t__) ;
 int bbr_reset_mode (struct sock*) ;
 struct bbr* inet_csk_ca (struct sock*) ;
 int max (int ,int ) ;
 int tcp_jiffies32 ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void bbr_check_probe_rtt_done(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct bbr *bbr = inet_csk_ca(sk);

 if (!(bbr->probe_rtt_done_stamp &&
       after(tcp_jiffies32, bbr->probe_rtt_done_stamp)))
  return;

 bbr->min_rtt_stamp = tcp_jiffies32;
 tp->snd_cwnd = max(tp->snd_cwnd, bbr->prior_cwnd);
 bbr_reset_mode(sk);
}
