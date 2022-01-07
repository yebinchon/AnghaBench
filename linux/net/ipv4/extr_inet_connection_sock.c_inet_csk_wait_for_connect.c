
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; } ;
struct inet_connection_sock {int icsk_accept_queue; } ;


 int DEFINE_WAIT (int ) ;
 int EAGAIN ;
 int EINVAL ;
 int TASK_INTERRUPTIBLE ;
 scalar_t__ TCP_LISTEN ;
 int current ;
 int finish_wait (int ,int *) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int lock_sock (struct sock*) ;
 int prepare_to_wait_exclusive (int ,int *,int ) ;
 int release_sock (struct sock*) ;
 scalar_t__ reqsk_queue_empty (int *) ;
 int sched_annotate_sleep () ;
 long schedule_timeout (long) ;
 scalar_t__ signal_pending (int ) ;
 int sk_sleep (struct sock*) ;
 int sock_intr_errno (long) ;
 int wait ;

__attribute__((used)) static int inet_csk_wait_for_connect(struct sock *sk, long timeo)
{
 struct inet_connection_sock *icsk = inet_csk(sk);
 DEFINE_WAIT(wait);
 int err;
 for (;;) {
  prepare_to_wait_exclusive(sk_sleep(sk), &wait,
       TASK_INTERRUPTIBLE);
  release_sock(sk);
  if (reqsk_queue_empty(&icsk->icsk_accept_queue))
   timeo = schedule_timeout(timeo);
  sched_annotate_sleep();
  lock_sock(sk);
  err = 0;
  if (!reqsk_queue_empty(&icsk->icsk_accept_queue))
   break;
  err = -EINVAL;
  if (sk->sk_state != TCP_LISTEN)
   break;
  err = sock_intr_errno(timeo);
  if (signal_pending(current))
   break;
  err = -EAGAIN;
  if (!timeo)
   break;
 }
 finish_wait(sk_sleep(sk), &wait);
 return err;
}
