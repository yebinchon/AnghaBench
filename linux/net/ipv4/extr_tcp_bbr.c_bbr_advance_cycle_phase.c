
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int delivered_mstamp; } ;
struct sock {int dummy; } ;
struct bbr {int cycle_idx; int cycle_mstamp; } ;


 int CYCLE_LEN ;
 struct bbr* inet_csk_ca (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void bbr_advance_cycle_phase(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct bbr *bbr = inet_csk_ca(sk);

 bbr->cycle_idx = (bbr->cycle_idx + 1) & (CYCLE_LEN - 1);
 bbr->cycle_mstamp = tp->delivered_mstamp;
}
