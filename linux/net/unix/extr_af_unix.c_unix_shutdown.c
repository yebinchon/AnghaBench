
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int sk_shutdown; scalar_t__ sk_type; int (* sk_state_change ) (struct sock*) ;} ;


 int EINVAL ;
 int POLL_HUP ;
 int POLL_IN ;
 int RCV_SHUTDOWN ;
 int SEND_SHUTDOWN ;
 int SHUTDOWN_MASK ;
 int SHUT_RD ;
 int SHUT_RDWR ;
 scalar_t__ SOCK_SEQPACKET ;
 scalar_t__ SOCK_STREAM ;
 int SOCK_WAKE_WAITD ;
 int sk_wake_async (struct sock*,int ,int ) ;
 int sock_hold (struct sock*) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*) ;
 int stub2 (struct sock*) ;
 struct sock* unix_peer (struct sock*) ;
 int unix_state_lock (struct sock*) ;
 int unix_state_unlock (struct sock*) ;

__attribute__((used)) static int unix_shutdown(struct socket *sock, int mode)
{
 struct sock *sk = sock->sk;
 struct sock *other;

 if (mode < SHUT_RD || mode > SHUT_RDWR)
  return -EINVAL;





 ++mode;

 unix_state_lock(sk);
 sk->sk_shutdown |= mode;
 other = unix_peer(sk);
 if (other)
  sock_hold(other);
 unix_state_unlock(sk);
 sk->sk_state_change(sk);

 if (other &&
  (sk->sk_type == SOCK_STREAM || sk->sk_type == SOCK_SEQPACKET)) {

  int peer_mode = 0;

  if (mode&RCV_SHUTDOWN)
   peer_mode |= SEND_SHUTDOWN;
  if (mode&SEND_SHUTDOWN)
   peer_mode |= RCV_SHUTDOWN;
  unix_state_lock(other);
  other->sk_shutdown |= peer_mode;
  unix_state_unlock(other);
  other->sk_state_change(other);
  if (peer_mode == SHUTDOWN_MASK)
   sk_wake_async(other, SOCK_WAKE_WAITD, POLL_HUP);
  else if (peer_mode & RCV_SHUTDOWN)
   sk_wake_async(other, SOCK_WAKE_WAITD, POLL_IN);
 }
 if (other)
  sock_put(other);

 return 0;
}
