
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int snd_cwnd; int snd_cwnd_clamp; int srtt_us; } ;
struct sock {int dummy; } ;
struct hybla {int rho; int hybla_en; int minrtt_us; scalar_t__ snd_cwnd_cents; scalar_t__ rho2_7ls; scalar_t__ rho_3ls; scalar_t__ rho2; } ;


 int hybla_recalc_param (struct sock*) ;
 struct hybla* inet_csk_ca (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void hybla_init(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct hybla *ca = inet_csk_ca(sk);

 ca->rho = 0;
 ca->rho2 = 0;
 ca->rho_3ls = 0;
 ca->rho2_7ls = 0;
 ca->snd_cwnd_cents = 0;
 ca->hybla_en = 1;
 tp->snd_cwnd = 2;
 tp->snd_cwnd_clamp = 65535;


 hybla_recalc_param(sk);


 ca->minrtt_us = tp->srtt_us;
 tp->snd_cwnd = ca->rho;
}
