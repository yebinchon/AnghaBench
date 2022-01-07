
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {int rejected; } ;
struct socket {scalar_t__ type; int state; struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_err; int sk_ack_backlog; } ;


 int DEFINE_WAIT (int ) ;
 int EAGAIN ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int O_NONBLOCK ;
 int SINGLE_DEPTH_NESTING ;
 scalar_t__ SOCK_STREAM ;
 int SS_CONNECTED ;
 int TASK_INTERRUPTIBLE ;
 scalar_t__ TCP_LISTEN ;
 int current ;
 int finish_wait (int ,int *) ;
 int lock_sock (struct sock*) ;
 int lock_sock_nested (struct sock*,int ) ;
 int prepare_to_wait (int ,int *,int ) ;
 int release_sock (struct sock*) ;
 long schedule_timeout (long) ;
 scalar_t__ signal_pending (int ) ;
 int sk_sleep (struct sock*) ;
 int sock_graft (struct sock*,struct socket*) ;
 int sock_intr_errno (long) ;
 int sock_put (struct sock*) ;
 long sock_sndtimeo (struct sock*,int) ;
 struct sock* vsock_dequeue_accept (struct sock*) ;
 struct vsock_sock* vsock_sk (struct sock*) ;
 int wait ;

__attribute__((used)) static int vsock_accept(struct socket *sock, struct socket *newsock, int flags,
   bool kern)
{
 struct sock *listener;
 int err;
 struct sock *connected;
 struct vsock_sock *vconnected;
 long timeout;
 DEFINE_WAIT(wait);

 err = 0;
 listener = sock->sk;

 lock_sock(listener);

 if (sock->type != SOCK_STREAM) {
  err = -EOPNOTSUPP;
  goto out;
 }

 if (listener->sk_state != TCP_LISTEN) {
  err = -EINVAL;
  goto out;
 }




 timeout = sock_sndtimeo(listener, flags & O_NONBLOCK);
 prepare_to_wait(sk_sleep(listener), &wait, TASK_INTERRUPTIBLE);

 while ((connected = vsock_dequeue_accept(listener)) == ((void*)0) &&
        listener->sk_err == 0) {
  release_sock(listener);
  timeout = schedule_timeout(timeout);
  finish_wait(sk_sleep(listener), &wait);
  lock_sock(listener);

  if (signal_pending(current)) {
   err = sock_intr_errno(timeout);
   goto out;
  } else if (timeout == 0) {
   err = -EAGAIN;
   goto out;
  }

  prepare_to_wait(sk_sleep(listener), &wait, TASK_INTERRUPTIBLE);
 }
 finish_wait(sk_sleep(listener), &wait);

 if (listener->sk_err)
  err = -listener->sk_err;

 if (connected) {
  listener->sk_ack_backlog--;

  lock_sock_nested(connected, SINGLE_DEPTH_NESTING);
  vconnected = vsock_sk(connected);
  if (err) {
   vconnected->rejected = 1;
  } else {
   newsock->state = SS_CONNECTED;
   sock_graft(connected, newsock);
  }

  release_sock(connected);
  sock_put(connected);
 }

out:
 release_sock(listener);
 return err;
}
