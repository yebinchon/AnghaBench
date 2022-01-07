
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int cwr; int ece; } ;
struct tcp_sock {int ecn_flags; } ;


 int TCP_ECN_OK ;

__attribute__((used)) static void tcp_ecn_rcv_syn(struct tcp_sock *tp, const struct tcphdr *th)
{
 if ((tp->ecn_flags & TCP_ECN_OK) && (!th->ece || !th->cwr))
  tp->ecn_flags &= ~TCP_ECN_OK;
}
