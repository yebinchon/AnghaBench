
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int snd_cwnd; } ;
struct sock {int dummy; } ;
struct bbr {scalar_t__ prev_ca_state; scalar_t__ mode; int prior_cwnd; } ;


 scalar_t__ BBR_PROBE_RTT ;
 scalar_t__ TCP_CA_Recovery ;
 struct bbr* inet_csk_ca (struct sock*) ;
 int max (int ,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void bbr_save_cwnd(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct bbr *bbr = inet_csk_ca(sk);

 if (bbr->prev_ca_state < TCP_CA_Recovery && bbr->mode != BBR_PROBE_RTT)
  bbr->prior_cwnd = tp->snd_cwnd;
 else
  bbr->prior_cwnd = max(bbr->prior_cwnd, tp->snd_cwnd);
}
