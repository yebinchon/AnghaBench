
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;


 int _enter (char*,struct socket*,struct sock*) ;
 int rxrpc_release_sock (struct sock*) ;

__attribute__((used)) static int rxrpc_release(struct socket *sock)
{
 struct sock *sk = sock->sk;

 _enter("%p{%p}", sock, sk);

 if (!sk)
  return 0;

 sock->sk = ((void*)0);

 return rxrpc_release_sock(sk);
}
