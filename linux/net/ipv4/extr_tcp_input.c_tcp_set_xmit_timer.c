
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int tcp_rearm_rto (struct sock*) ;
 int tcp_schedule_loss_probe (struct sock*,int) ;

__attribute__((used)) static void tcp_set_xmit_timer(struct sock *sk)
{
 if (!tcp_schedule_loss_probe(sk, 1))
  tcp_rearm_rto(sk);
}
