
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct inet_connection_sock {TYPE_1__* icsk_ca_ops; } ;
struct TYPE_4__ {scalar_t__ prior_ssthresh; } ;
struct TYPE_3__ {int (* init ) (struct sock*) ;} ;


 int INET_ECN_dontxmit (struct sock*) ;
 int INET_ECN_xmit (struct sock*) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int stub1 (struct sock*) ;
 scalar_t__ tcp_ca_needs_ecn (struct sock*) ;
 TYPE_2__* tcp_sk (struct sock*) ;

void tcp_init_congestion_control(struct sock *sk)
{
 const struct inet_connection_sock *icsk = inet_csk(sk);

 tcp_sk(sk)->prior_ssthresh = 0;
 if (icsk->icsk_ca_ops->init)
  icsk->icsk_ca_ops->init(sk);
 if (tcp_ca_needs_ecn(sk))
  INET_ECN_xmit(sk);
 else
  INET_ECN_dontxmit(sk);
}
