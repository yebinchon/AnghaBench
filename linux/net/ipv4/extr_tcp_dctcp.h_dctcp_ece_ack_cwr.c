
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_sock {int ecn_flags; } ;
struct sock {int dummy; } ;


 int TCP_ECN_DEMAND_CWR ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static inline void dctcp_ece_ack_cwr(struct sock *sk, u32 ce_state)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (ce_state == 1)
  tp->ecn_flags |= TCP_ECN_DEMAND_CWR;
 else
  tp->ecn_flags &= ~TCP_ECN_DEMAND_CWR;
}
