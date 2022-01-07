
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int reordering; int mss_cache; scalar_t__ snd_una; } ;
struct sock {int dummy; } ;


 int after (int ,scalar_t__) ;
 int tcp_highest_sack_seq (struct tcp_sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static bool tcp_force_fast_retransmit(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);

 return after(tcp_highest_sack_seq(tp),
       tp->snd_una + tp->reordering * tp->mss_cache);
}
