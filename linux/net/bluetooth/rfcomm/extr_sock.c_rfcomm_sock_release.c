
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;


 int BT_DBG (char*,struct socket*,struct sock*) ;
 int rfcomm_sock_kill (struct sock*) ;
 int rfcomm_sock_shutdown (struct socket*,int) ;
 int sock_orphan (struct sock*) ;

__attribute__((used)) static int rfcomm_sock_release(struct socket *sock)
{
 struct sock *sk = sock->sk;
 int err;

 BT_DBG("sock %p, sk %p", sock, sk);

 if (!sk)
  return 0;

 err = rfcomm_sock_shutdown(sock, 2);

 sock_orphan(sk);
 rfcomm_sock_kill(sk);
 return err;
}
