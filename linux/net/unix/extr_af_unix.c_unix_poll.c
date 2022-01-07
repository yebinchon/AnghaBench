
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int sk_shutdown; scalar_t__ sk_type; scalar_t__ sk_state; int sk_receive_queue; scalar_t__ sk_err; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDHUP ;
 int EPOLLRDNORM ;
 int EPOLLWRBAND ;
 int EPOLLWRNORM ;
 int RCV_SHUTDOWN ;
 int SHUTDOWN_MASK ;
 scalar_t__ SOCK_SEQPACKET ;
 scalar_t__ SOCK_STREAM ;
 scalar_t__ TCP_CLOSE ;
 int skb_queue_empty_lockless (int *) ;
 int sock_poll_wait (struct file*,struct socket*,int *) ;
 scalar_t__ unix_writable (struct sock*) ;

__attribute__((used)) static __poll_t unix_poll(struct file *file, struct socket *sock, poll_table *wait)
{
 struct sock *sk = sock->sk;
 __poll_t mask;

 sock_poll_wait(file, sock, wait);
 mask = 0;


 if (sk->sk_err)
  mask |= EPOLLERR;
 if (sk->sk_shutdown == SHUTDOWN_MASK)
  mask |= EPOLLHUP;
 if (sk->sk_shutdown & RCV_SHUTDOWN)
  mask |= EPOLLRDHUP | EPOLLIN | EPOLLRDNORM;


 if (!skb_queue_empty_lockless(&sk->sk_receive_queue))
  mask |= EPOLLIN | EPOLLRDNORM;


 if ((sk->sk_type == SOCK_STREAM || sk->sk_type == SOCK_SEQPACKET) &&
     sk->sk_state == TCP_CLOSE)
  mask |= EPOLLHUP;





 if (unix_writable(sk))
  mask |= EPOLLOUT | EPOLLWRNORM | EPOLLWRBAND;

 return mask;
}
