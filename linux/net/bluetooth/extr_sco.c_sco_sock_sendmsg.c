
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; } ;
struct msghdr {int msg_flags; } ;


 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,struct socket*,struct sock*) ;
 int ENOTCONN ;
 int EOPNOTSUPP ;
 int MSG_OOB ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int sco_send_frame (struct sock*,struct msghdr*,size_t) ;
 int sock_error (struct sock*) ;

__attribute__((used)) static int sco_sock_sendmsg(struct socket *sock, struct msghdr *msg,
       size_t len)
{
 struct sock *sk = sock->sk;
 int err;

 BT_DBG("sock %p, sk %p", sock, sk);

 err = sock_error(sk);
 if (err)
  return err;

 if (msg->msg_flags & MSG_OOB)
  return -EOPNOTSUPP;

 lock_sock(sk);

 if (sk->sk_state == BT_CONNECTED)
  err = sco_send_frame(sk, msg, len);
 else
  err = -ENOTCONN;

 release_sock(sk);
 return err;
}
