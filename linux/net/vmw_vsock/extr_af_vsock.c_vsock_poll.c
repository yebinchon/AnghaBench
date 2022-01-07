
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsock_sock {int peer_shutdown; } ;
struct socket {scalar_t__ type; struct sock* sk; } ;
struct sock {int sk_shutdown; scalar_t__ sk_state; int sk_receive_queue; scalar_t__ sk_err; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_2__ {int (* notify_poll_in ) (struct vsock_sock*,int,int*) ;int (* notify_poll_out ) (struct vsock_sock*,int,int*) ;scalar_t__ (* stream_is_active ) (struct vsock_sock*) ;} ;


 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDHUP ;
 int EPOLLRDNORM ;
 int EPOLLWRBAND ;
 int EPOLLWRNORM ;
 int RCV_SHUTDOWN ;
 int SEND_SHUTDOWN ;
 int SHUTDOWN_MASK ;
 scalar_t__ SOCK_DGRAM ;
 scalar_t__ SOCK_STREAM ;
 scalar_t__ TCP_CLOSE ;
 scalar_t__ TCP_CLOSING ;
 scalar_t__ TCP_ESTABLISHED ;
 scalar_t__ TCP_LISTEN ;
 int lock_sock (struct sock*) ;
 int poll_wait (struct file*,int ,int *) ;
 int release_sock (struct sock*) ;
 int sk_sleep (struct sock*) ;
 int skb_queue_empty_lockless (int *) ;
 scalar_t__ stub1 (struct vsock_sock*) ;
 int stub2 (struct vsock_sock*,int,int*) ;
 int stub3 (struct vsock_sock*,int,int*) ;
 TYPE_1__* transport ;
 int vsock_is_accept_queue_empty (struct sock*) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

__attribute__((used)) static __poll_t vsock_poll(struct file *file, struct socket *sock,
          poll_table *wait)
{
 struct sock *sk;
 __poll_t mask;
 struct vsock_sock *vsk;

 sk = sock->sk;
 vsk = vsock_sk(sk);

 poll_wait(file, sk_sleep(sk), wait);
 mask = 0;

 if (sk->sk_err)

  mask |= EPOLLERR;




 if ((sk->sk_shutdown == SHUTDOWN_MASK) ||
     ((sk->sk_shutdown & SEND_SHUTDOWN) &&
      (vsk->peer_shutdown & SEND_SHUTDOWN))) {
  mask |= EPOLLHUP;
 }

 if (sk->sk_shutdown & RCV_SHUTDOWN ||
     vsk->peer_shutdown & SEND_SHUTDOWN) {
  mask |= EPOLLRDHUP;
 }

 if (sock->type == SOCK_DGRAM) {




  if (!skb_queue_empty_lockless(&sk->sk_receive_queue) ||
      (sk->sk_shutdown & RCV_SHUTDOWN)) {
   mask |= EPOLLIN | EPOLLRDNORM;
  }

  if (!(sk->sk_shutdown & SEND_SHUTDOWN))
   mask |= EPOLLOUT | EPOLLWRNORM | EPOLLWRBAND;

 } else if (sock->type == SOCK_STREAM) {
  lock_sock(sk);




  if (sk->sk_state == TCP_LISTEN
      && !vsock_is_accept_queue_empty(sk))
   mask |= EPOLLIN | EPOLLRDNORM;


  if (transport->stream_is_active(vsk) &&
      !(sk->sk_shutdown & RCV_SHUTDOWN)) {
   bool data_ready_now = 0;
   int ret = transport->notify_poll_in(
     vsk, 1, &data_ready_now);
   if (ret < 0) {
    mask |= EPOLLERR;
   } else {
    if (data_ready_now)
     mask |= EPOLLIN | EPOLLRDNORM;

   }
  }





  if (sk->sk_shutdown & RCV_SHUTDOWN ||
      vsk->peer_shutdown & SEND_SHUTDOWN) {
   mask |= EPOLLIN | EPOLLRDNORM;
  }


  if (sk->sk_state == TCP_ESTABLISHED) {
   if (!(sk->sk_shutdown & SEND_SHUTDOWN)) {
    bool space_avail_now = 0;
    int ret = transport->notify_poll_out(
      vsk, 1, &space_avail_now);
    if (ret < 0) {
     mask |= EPOLLERR;
    } else {
     if (space_avail_now)



      mask |= EPOLLOUT | EPOLLWRNORM;

    }
   }
  }





  if (sk->sk_state == TCP_CLOSE || sk->sk_state == TCP_CLOSING) {
   if (!(sk->sk_shutdown & SEND_SHUTDOWN))
    mask |= EPOLLOUT | EPOLLWRNORM;

  }

  release_sock(sk);
 }

 return mask;
}
