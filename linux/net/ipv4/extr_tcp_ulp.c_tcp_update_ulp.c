
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {struct proto* sk_prot; } ;
struct proto {int dummy; } ;
struct inet_connection_sock {TYPE_1__* icsk_ulp_ops; } ;
struct TYPE_2__ {int (* update ) (struct sock*,struct proto*) ;} ;


 struct inet_connection_sock* inet_csk (struct sock*) ;
 int stub1 (struct sock*,struct proto*) ;

void tcp_update_ulp(struct sock *sk, struct proto *proto)
{
 struct inet_connection_sock *icsk = inet_csk(sk);

 if (!icsk->icsk_ulp_ops) {
  sk->sk_prot = proto;
  return;
 }

 if (icsk->icsk_ulp_ops->update)
  icsk->icsk_ulp_ops->update(sk, proto);
}
