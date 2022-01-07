
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int sk_state; int sk_shutdown; TYPE_1__* sk_socket; int sk_rmem_alloc; scalar_t__ sk_err; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_2__ {int flags; } ;


 int DCCPF_REQUESTING ;
 int DCCPF_RESPOND ;
 int DCCP_CLOSED ;
 int DCCP_LISTEN ;
 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDHUP ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 int RCV_SHUTDOWN ;
 int SEND_SHUTDOWN ;
 int SHUTDOWN_MASK ;
 int SOCKWQ_ASYNC_NOSPACE ;
 int SOCK_NOSPACE ;
 scalar_t__ atomic_read (int *) ;
 int inet_csk_listen_poll (struct sock*) ;
 int set_bit (int ,int *) ;
 int sk_set_bit (int ,struct sock*) ;
 scalar_t__ sk_stream_is_writeable (struct sock*) ;
 int sock_poll_wait (struct file*,struct socket*,int *) ;

__poll_t dccp_poll(struct file *file, struct socket *sock,
         poll_table *wait)
{
 __poll_t mask;
 struct sock *sk = sock->sk;

 sock_poll_wait(file, sock, wait);
 if (sk->sk_state == DCCP_LISTEN)
  return inet_csk_listen_poll(sk);






 mask = 0;
 if (sk->sk_err)
  mask = EPOLLERR;

 if (sk->sk_shutdown == SHUTDOWN_MASK || sk->sk_state == DCCP_CLOSED)
  mask |= EPOLLHUP;
 if (sk->sk_shutdown & RCV_SHUTDOWN)
  mask |= EPOLLIN | EPOLLRDNORM | EPOLLRDHUP;


 if ((1 << sk->sk_state) & ~(DCCPF_REQUESTING | DCCPF_RESPOND)) {
  if (atomic_read(&sk->sk_rmem_alloc) > 0)
   mask |= EPOLLIN | EPOLLRDNORM;

  if (!(sk->sk_shutdown & SEND_SHUTDOWN)) {
   if (sk_stream_is_writeable(sk)) {
    mask |= EPOLLOUT | EPOLLWRNORM;
   } else {
    sk_set_bit(SOCKWQ_ASYNC_NOSPACE, sk);
    set_bit(SOCK_NOSPACE, &sk->sk_socket->flags);





    if (sk_stream_is_writeable(sk))
     mask |= EPOLLOUT | EPOLLWRNORM;
   }
  }
 }
 return mask;
}
