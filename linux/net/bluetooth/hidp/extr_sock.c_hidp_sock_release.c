
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;


 int BT_DBG (char*,struct socket*,struct sock*) ;
 int bt_sock_unlink (int *,struct sock*) ;
 int hidp_sk_list ;
 int sock_orphan (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static int hidp_sock_release(struct socket *sock)
{
 struct sock *sk = sock->sk;

 BT_DBG("sock %p sk %p", sock, sk);

 if (!sk)
  return 0;

 bt_sock_unlink(&hidp_sk_list, sk);

 sock_orphan(sk);
 sock_put(sk);

 return 0;
}
