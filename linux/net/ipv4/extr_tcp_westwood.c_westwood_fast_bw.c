
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct westwood {scalar_t__ snd_una; int bk; } ;
struct tcp_sock {scalar_t__ snd_una; } ;
struct sock {int dummy; } ;


 struct westwood* inet_csk_ca (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int update_rtt_min (struct westwood*) ;
 int westwood_update_window (struct sock*) ;

__attribute__((used)) static inline void westwood_fast_bw(struct sock *sk)
{
 const struct tcp_sock *tp = tcp_sk(sk);
 struct westwood *w = inet_csk_ca(sk);

 westwood_update_window(sk);

 w->bk += tp->snd_una - w->snd_una;
 w->snd_una = tp->snd_una;
 update_rtt_min(w);
}
