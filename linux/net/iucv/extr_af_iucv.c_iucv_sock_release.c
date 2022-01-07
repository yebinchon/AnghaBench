
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;


 int iucv_sock_close (struct sock*) ;
 int iucv_sock_kill (struct sock*) ;
 int sock_orphan (struct sock*) ;

__attribute__((used)) static int iucv_sock_release(struct socket *sock)
{
 struct sock *sk = sock->sk;
 int err = 0;

 if (!sk)
  return 0;

 iucv_sock_close(sk);

 sock_orphan(sk);
 iucv_sock_kill(sk);
 return err;
}
