
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;


 int TIPC_LISTEN ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int tipc_set_sk_state (struct sock*,int ) ;

__attribute__((used)) static int tipc_listen(struct socket *sock, int len)
{
 struct sock *sk = sock->sk;
 int res;

 lock_sock(sk);
 res = tipc_set_sk_state(sk, TIPC_LISTEN);
 release_sock(sk);

 return res;
}
