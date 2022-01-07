
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ type; struct sock* sk; } ;
struct sock {int dummy; } ;


 scalar_t__ SOCK_RAW ;
 int nfc_sock_unlink (int *,struct sock*) ;
 int pr_debug (char*,struct socket*,struct sock*) ;
 int raw_sk_list ;
 int sock_orphan (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static int rawsock_release(struct socket *sock)
{
 struct sock *sk = sock->sk;

 pr_debug("sock=%p sk=%p\n", sock, sk);

 if (!sk)
  return 0;

 if (sock->type == SOCK_RAW)
  nfc_sock_unlink(&raw_sk_list, sk);

 sock_orphan(sk);
 sock_put(sk);

 return 0;
}
