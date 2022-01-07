
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int snd_nxt; } ;
struct sock {int dummy; } ;
struct illinois {scalar_t__ sum_rtt; scalar_t__ cnt_rtt; int end_seq; } ;


 struct illinois* inet_csk_ca (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void rtt_reset(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct illinois *ca = inet_csk_ca(sk);

 ca->end_seq = tp->snd_nxt;
 ca->cnt_rtt = 0;
 ca->sum_rtt = 0;


}
