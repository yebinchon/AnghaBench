
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vegas {int doing_vegas_now; int minRTT; scalar_t__ cntRTT; int beg_snd_nxt; } ;
struct tcp_sock {int snd_nxt; } ;
struct sock {int dummy; } ;


 struct vegas* inet_csk_ca (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void vegas_enable(struct sock *sk)
{
 const struct tcp_sock *tp = tcp_sk(sk);
 struct vegas *vegas = inet_csk_ca(sk);


 vegas->doing_vegas_now = 1;


 vegas->beg_snd_nxt = tp->snd_nxt;

 vegas->cntRTT = 0;
 vegas->minRTT = 0x7fffffff;
}
