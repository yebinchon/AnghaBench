
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int ecn_flags; } ;


 int TCP_ECN_QUEUE_CWR ;

__attribute__((used)) static void tcp_ecn_withdraw_cwr(struct tcp_sock *tp)
{
 tp->ecn_flags &= ~TCP_ECN_QUEUE_CWR;
}
