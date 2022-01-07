
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct inet_connection_sock {TYPE_1__* icsk_ulp_ops; } ;
struct TYPE_2__ {int owner; int (* release ) (struct sock*) ;} ;


 struct inet_connection_sock* inet_csk (struct sock*) ;
 int module_put (int ) ;
 int stub1 (struct sock*) ;

void tcp_cleanup_ulp(struct sock *sk)
{
 struct inet_connection_sock *icsk = inet_csk(sk);





 if (!icsk->icsk_ulp_ops)
  return;

 if (icsk->icsk_ulp_ops->release)
  icsk->icsk_ulp_ops->release(sk);
 module_put(icsk->icsk_ulp_ops->owner);

 icsk->icsk_ulp_ops = ((void*)0);
}
