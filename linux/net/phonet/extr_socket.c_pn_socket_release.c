
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {TYPE_1__* sk_prot; } ;
struct TYPE_2__ {int (* close ) (struct sock*,int ) ;} ;


 int stub1 (struct sock*,int ) ;

__attribute__((used)) static int pn_socket_release(struct socket *sock)
{
 struct sock *sk = sock->sk;

 if (sk) {
  sock->sk = ((void*)0);
  sk->sk_prot->close(sk, 0);
 }
 return 0;
}
