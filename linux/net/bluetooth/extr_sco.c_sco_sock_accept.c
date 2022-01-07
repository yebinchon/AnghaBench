
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int state; struct sock* sk; } ;
struct sock {scalar_t__ sk_state; } ;


 int BT_DBG (char*,struct sock*,...) ;
 scalar_t__ BT_LISTEN ;
 int DEFINE_WAIT_FUNC (int ,int ) ;
 int EAGAIN ;
 int EBADFD ;
 int O_NONBLOCK ;
 int SS_CONNECTED ;
 int TASK_INTERRUPTIBLE ;
 int add_wait_queue_exclusive (int ,int *) ;
 struct sock* bt_accept_dequeue (struct sock*,struct socket*) ;
 int current ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int remove_wait_queue (int ,int *) ;
 scalar_t__ signal_pending (int ) ;
 int sk_sleep (struct sock*) ;
 int sock_intr_errno (long) ;
 long sock_rcvtimeo (struct sock*,int) ;
 int wait ;
 long wait_woken (int *,int ,long) ;
 int woken_wake_function ;

__attribute__((used)) static int sco_sock_accept(struct socket *sock, struct socket *newsock,
      int flags, bool kern)
{
 DEFINE_WAIT_FUNC(wait, woken_wake_function);
 struct sock *sk = sock->sk, *ch;
 long timeo;
 int err = 0;

 lock_sock(sk);

 timeo = sock_rcvtimeo(sk, flags & O_NONBLOCK);

 BT_DBG("sk %p timeo %ld", sk, timeo);


 add_wait_queue_exclusive(sk_sleep(sk), &wait);
 while (1) {
  if (sk->sk_state != BT_LISTEN) {
   err = -EBADFD;
   break;
  }

  ch = bt_accept_dequeue(sk, newsock);
  if (ch)
   break;

  if (!timeo) {
   err = -EAGAIN;
   break;
  }

  if (signal_pending(current)) {
   err = sock_intr_errno(timeo);
   break;
  }

  release_sock(sk);

  timeo = wait_woken(&wait, TASK_INTERRUPTIBLE, timeo);
  lock_sock(sk);
 }
 remove_wait_queue(sk_sleep(sk), &wait);

 if (err)
  goto done;

 newsock->state = SS_CONNECTED;

 BT_DBG("new socket %p", ch);

done:
 release_sock(sk);
 return err;
}
