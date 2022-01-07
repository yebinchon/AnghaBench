
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int state; struct sock* sk; } ;
struct sock {scalar_t__ sk_state; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int EAGAIN ;
 int EBADFD ;
 scalar_t__ LLCP_LISTEN ;
 int O_NONBLOCK ;
 int SINGLE_DEPTH_NESTING ;
 int SS_CONNECTED ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int add_wait_queue_exclusive (int ,int *) ;
 int current ;
 int lock_sock_nested (struct sock*,int ) ;
 struct sock* nfc_llcp_accept_dequeue (struct sock*,struct socket*) ;
 int pr_debug (char*,struct sock*) ;
 int release_sock (struct sock*) ;
 int remove_wait_queue (int ,int *) ;
 long schedule_timeout (long) ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int sk_sleep (struct sock*) ;
 int sock_intr_errno (long) ;
 long sock_rcvtimeo (struct sock*,int) ;
 int wait ;

__attribute__((used)) static int llcp_sock_accept(struct socket *sock, struct socket *newsock,
       int flags, bool kern)
{
 DECLARE_WAITQUEUE(wait, current);
 struct sock *sk = sock->sk, *new_sk;
 long timeo;
 int ret = 0;

 pr_debug("parent %p\n", sk);

 lock_sock_nested(sk, SINGLE_DEPTH_NESTING);

 if (sk->sk_state != LLCP_LISTEN) {
  ret = -EBADFD;
  goto error;
 }

 timeo = sock_rcvtimeo(sk, flags & O_NONBLOCK);


 add_wait_queue_exclusive(sk_sleep(sk), &wait);
 while (!(new_sk = nfc_llcp_accept_dequeue(sk, newsock))) {
  set_current_state(TASK_INTERRUPTIBLE);

  if (!timeo) {
   ret = -EAGAIN;
   break;
  }

  if (signal_pending(current)) {
   ret = sock_intr_errno(timeo);
   break;
  }

  release_sock(sk);
  timeo = schedule_timeout(timeo);
  lock_sock_nested(sk, SINGLE_DEPTH_NESTING);
 }
 __set_current_state(TASK_RUNNING);
 remove_wait_queue(sk_sleep(sk), &wait);

 if (ret)
  goto error;

 newsock->state = SS_CONNECTED;

 pr_debug("new socket %p\n", new_sk);

error:
 release_sock(sk);

 return ret;
}
