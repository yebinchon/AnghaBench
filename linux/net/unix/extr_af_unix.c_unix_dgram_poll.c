
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int sk_shutdown; scalar_t__ sk_type; scalar_t__ sk_state; int sk_receive_queue; int sk_error_queue; scalar_t__ sk_err; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLPRI ;
 int EPOLLRDHUP ;
 int EPOLLRDNORM ;
 int EPOLLWRBAND ;
 int EPOLLWRNORM ;
 int RCV_SHUTDOWN ;
 int SHUTDOWN_MASK ;
 int SOCKWQ_ASYNC_NOSPACE ;
 int SOCK_SELECT_ERR_QUEUE ;
 scalar_t__ SOCK_SEQPACKET ;
 scalar_t__ TCP_CLOSE ;
 scalar_t__ TCP_SYN_SENT ;
 int poll_requested_events (int *) ;
 int sk_set_bit (int ,struct sock*) ;
 int skb_queue_empty_lockless (int *) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int sock_poll_wait (struct file*,struct socket*,int *) ;
 scalar_t__ unix_dgram_peer_wake_me (struct sock*,struct sock*) ;
 struct sock* unix_peer (struct sock*) ;
 scalar_t__ unix_recvq_full (struct sock*) ;
 int unix_state_lock (struct sock*) ;
 int unix_state_unlock (struct sock*) ;
 unsigned int unix_writable (struct sock*) ;

__attribute__((used)) static __poll_t unix_dgram_poll(struct file *file, struct socket *sock,
        poll_table *wait)
{
 struct sock *sk = sock->sk, *other;
 unsigned int writable;
 __poll_t mask;

 sock_poll_wait(file, sock, wait);
 mask = 0;


 if (sk->sk_err || !skb_queue_empty_lockless(&sk->sk_error_queue))
  mask |= EPOLLERR |
   (sock_flag(sk, SOCK_SELECT_ERR_QUEUE) ? EPOLLPRI : 0);

 if (sk->sk_shutdown & RCV_SHUTDOWN)
  mask |= EPOLLRDHUP | EPOLLIN | EPOLLRDNORM;
 if (sk->sk_shutdown == SHUTDOWN_MASK)
  mask |= EPOLLHUP;


 if (!skb_queue_empty_lockless(&sk->sk_receive_queue))
  mask |= EPOLLIN | EPOLLRDNORM;


 if (sk->sk_type == SOCK_SEQPACKET) {
  if (sk->sk_state == TCP_CLOSE)
   mask |= EPOLLHUP;

  if (sk->sk_state == TCP_SYN_SENT)
   return mask;
 }


 if (!(poll_requested_events(wait) & (EPOLLWRBAND|EPOLLWRNORM|EPOLLOUT)))
  return mask;

 writable = unix_writable(sk);
 if (writable) {
  unix_state_lock(sk);

  other = unix_peer(sk);
  if (other && unix_peer(other) != sk &&
      unix_recvq_full(other) &&
      unix_dgram_peer_wake_me(sk, other))
   writable = 0;

  unix_state_unlock(sk);
 }

 if (writable)
  mask |= EPOLLOUT | EPOLLWRNORM | EPOLLWRBAND;
 else
  sk_set_bit(SOCKWQ_ASYNC_NOSPACE, sk);

 return mask;
}
