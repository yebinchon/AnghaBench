
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_sock {int prior_cwnd; int snd_cwnd; } ;
struct sock {int dummy; } ;


 int max (int ,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

u32 tcp_reno_undo_cwnd(struct sock *sk)
{
 const struct tcp_sock *tp = tcp_sk(sk);

 return max(tp->snd_cwnd, tp->prior_cwnd);
}
