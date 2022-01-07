
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int (* sk_state_change ) (struct sock*) ;int sk_rcvtimeo; } ;


 int EINVAL ;
 int ENOTCONN ;
 scalar_t__ TCP_ESTABLISHED ;
 int llc_send_disc (struct sock*) ;
 int llc_ui_wait_for_disc (struct sock*,int ) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int stub1 (struct sock*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int llc_ui_shutdown(struct socket *sock, int how)
{
 struct sock *sk = sock->sk;
 int rc = -ENOTCONN;

 lock_sock(sk);
 if (unlikely(sk->sk_state != TCP_ESTABLISHED))
  goto out;
 rc = -EINVAL;
 if (how != 2)
  goto out;
 rc = llc_send_disc(sk);
 if (!rc)
  rc = llc_ui_wait_for_disc(sk, sk->sk_rcvtimeo);

 sk->sk_state_change(sk);
out:
 release_sock(sk);
 return rc;
}
