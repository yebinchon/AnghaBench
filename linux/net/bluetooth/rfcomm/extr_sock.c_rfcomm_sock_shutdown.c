
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_lingertime; int sk_shutdown; } ;
struct TYPE_2__ {int flags; } ;


 int BT_CLOSED ;
 int BT_DBG (char*,struct socket*,struct sock*) ;
 int PF_EXITING ;
 int SHUTDOWN_MASK ;
 int SOCK_LINGER ;
 int __rfcomm_sock_close (struct sock*) ;
 int bt_sock_wait_state (struct sock*,int ,scalar_t__) ;
 TYPE_1__* current ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;

__attribute__((used)) static int rfcomm_sock_shutdown(struct socket *sock, int how)
{
 struct sock *sk = sock->sk;
 int err = 0;

 BT_DBG("sock %p, sk %p", sock, sk);

 if (!sk)
  return 0;

 lock_sock(sk);
 if (!sk->sk_shutdown) {
  sk->sk_shutdown = SHUTDOWN_MASK;
  __rfcomm_sock_close(sk);

  if (sock_flag(sk, SOCK_LINGER) && sk->sk_lingertime &&
      !(current->flags & PF_EXITING))
   err = bt_sock_wait_state(sk, BT_CLOSED, sk->sk_lingertime);
 }
 release_sock(sk);
 return err;
}
