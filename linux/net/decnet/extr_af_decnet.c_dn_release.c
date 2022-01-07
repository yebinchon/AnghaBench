
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;


 int dn_destroy_sock (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int sock_hold (struct sock*) ;
 int sock_orphan (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static int
dn_release(struct socket *sock)
{
 struct sock *sk = sock->sk;

 if (sk) {
  sock_orphan(sk);
  sock_hold(sk);
  lock_sock(sk);
  dn_destroy_sock(sk);
  release_sock(sk);
  sock_put(sk);
 }

 return 0;
}
