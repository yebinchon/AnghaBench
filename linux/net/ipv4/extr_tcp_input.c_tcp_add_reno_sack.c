
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcp_sock {scalar_t__ sacked_out; int delivered; } ;
struct sock {int dummy; } ;
typedef scalar_t__ s32 ;


 int tcp_check_reno_reordering (struct sock*,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_verify_left_out (struct tcp_sock*) ;

__attribute__((used)) static void tcp_add_reno_sack(struct sock *sk, int num_dupack)
{
 if (num_dupack) {
  struct tcp_sock *tp = tcp_sk(sk);
  u32 prior_sacked = tp->sacked_out;
  s32 delivered;

  tp->sacked_out += num_dupack;
  tcp_check_reno_reordering(sk, 0);
  delivered = tp->sacked_out - prior_sacked;
  if (delivered > 0)
   tp->delivered += delivered;
  tcp_verify_left_out(tp);
 }
}
