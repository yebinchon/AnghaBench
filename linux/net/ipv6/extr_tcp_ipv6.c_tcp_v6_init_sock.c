
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct inet_connection_sock {int * icsk_af_ops; } ;
struct TYPE_2__ {int * af_specific; } ;


 struct inet_connection_sock* inet_csk (struct sock*) ;
 int ipv6_specific ;
 int tcp_init_sock (struct sock*) ;
 TYPE_1__* tcp_sk (struct sock*) ;
 int tcp_sock_ipv6_specific ;

__attribute__((used)) static int tcp_v6_init_sock(struct sock *sk)
{
 struct inet_connection_sock *icsk = inet_csk(sk);

 tcp_init_sock(sk);

 icsk->icsk_af_ops = &ipv6_specific;





 return 0;
}
