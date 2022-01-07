
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_shutdown; scalar_t__ sk_err; int sk_receive_queue; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int RCV_SHUTDOWN ;
 int SOCKWQ_ASYNC_WAITDATA ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int add_wait_queue (int ,int *) ;
 int current ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int remove_wait_queue (int ,int *) ;
 long schedule_timeout (long) ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int sk_clear_bit (int ,struct sock*) ;
 int sk_set_bit (int ,struct sock*) ;
 int sk_sleep (struct sock*) ;
 int skb_queue_empty (int *) ;
 int wait ;

__attribute__((used)) static long bt_sock_data_wait(struct sock *sk, long timeo)
{
 DECLARE_WAITQUEUE(wait, current);

 add_wait_queue(sk_sleep(sk), &wait);
 for (;;) {
  set_current_state(TASK_INTERRUPTIBLE);

  if (!skb_queue_empty(&sk->sk_receive_queue))
   break;

  if (sk->sk_err || (sk->sk_shutdown & RCV_SHUTDOWN))
   break;

  if (signal_pending(current) || !timeo)
   break;

  sk_set_bit(SOCKWQ_ASYNC_WAITDATA, sk);
  release_sock(sk);
  timeo = schedule_timeout(timeo);
  lock_sock(sk);
  sk_clear_bit(SOCKWQ_ASYNC_WAITDATA, sk);
 }

 __set_current_state(TASK_RUNNING);
 remove_wait_queue(sk_sleep(sk), &wait);
 return timeo;
}
