
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int sk_receive_queue; } ;


 int DEFINE_WAIT (int ) ;
 int EAGAIN ;
 int TASK_INTERRUPTIBLE ;
 int current ;
 int finish_wait (int ,int *) ;
 int lock_sock (struct sock*) ;
 int prepare_to_wait_exclusive (int ,int *,int ) ;
 int release_sock (struct sock*) ;
 long schedule_timeout (long) ;
 scalar_t__ signal_pending (int ) ;
 int sk_sleep (struct sock*) ;
 scalar_t__ skb_queue_empty (int *) ;
 int sock_intr_errno (long) ;
 int wait ;

__attribute__((used)) static int tipc_wait_for_accept(struct socket *sock, long timeo)
{
 struct sock *sk = sock->sk;
 DEFINE_WAIT(wait);
 int err;






 for (;;) {
  prepare_to_wait_exclusive(sk_sleep(sk), &wait,
       TASK_INTERRUPTIBLE);
  if (timeo && skb_queue_empty(&sk->sk_receive_queue)) {
   release_sock(sk);
   timeo = schedule_timeout(timeo);
   lock_sock(sk);
  }
  err = 0;
  if (!skb_queue_empty(&sk->sk_receive_queue))
   break;
  err = -EAGAIN;
  if (!timeo)
   break;
  err = sock_intr_errno(timeo);
  if (signal_pending(current))
   break;
 }
 finish_wait(sk_sleep(sk), &wait);
 return err;
}
