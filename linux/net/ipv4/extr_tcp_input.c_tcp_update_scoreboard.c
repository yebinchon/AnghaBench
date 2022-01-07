
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int sacked_out; int reordering; } ;
struct sock {int dummy; } ;


 scalar_t__ tcp_is_sack (struct tcp_sock*) ;
 int tcp_mark_head_lost (struct sock*,int,int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void tcp_update_scoreboard(struct sock *sk, int fast_rexmit)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (tcp_is_sack(tp)) {
  int sacked_upto = tp->sacked_out - tp->reordering;
  if (sacked_upto >= 0)
   tcp_mark_head_lost(sk, sacked_upto, 0);
  else if (fast_rexmit)
   tcp_mark_head_lost(sk, 1, 1);
 }
}
