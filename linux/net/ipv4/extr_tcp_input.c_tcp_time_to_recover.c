
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {scalar_t__ reordering; scalar_t__ lost_out; } ;
struct sock {int dummy; } ;


 scalar_t__ tcp_dupack_heuristics (struct tcp_sock*) ;
 int tcp_is_rack (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static bool tcp_time_to_recover(struct sock *sk, int flag)
{
 struct tcp_sock *tp = tcp_sk(sk);


 if (tp->lost_out)
  return 1;


 if (!tcp_is_rack(sk) && tcp_dupack_heuristics(tp) > tp->reordering)
  return 1;

 return 0;
}
